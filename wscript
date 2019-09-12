# def options(opt):
#     pass

def configure(conf):
    conf.env.append_value("LIB", ["bgp"])

def build(bld):
    module = bld.create_ns3_module('bgp', ['core', 'internet', 'network'])
    module.source = [
        'model/bgp.cc',
        'model/bgp-routing.cc',
        'model/bgp-ns3-clock.cc',
        'model/bgp-ns3-fsm.cc',
        'model/bgp-ns3-socket-in.cc',
        'model/bgp-ns3-socket-out.cc',
        'model/bgp-log.cc'
        ]

    headers = bld(features='ns3header')
    headers.module = 'bgp'
    headers.source = [
        'model/bgp.h',
        'model/bgp-routing.h',
        'model/bgp-ns3-clock.h',
        'model/bgp-ns3-fsm.h',
        'model/bgp-ns3-socket-in.h',
        'model/bgp-ns3-socket-out.h',
        'model/bgp-log.h'
        ]

    if bld.env.ENABLE_EXAMPLES:
        bld.recurse('examples')

    # bld.ns3_python_bindings()

