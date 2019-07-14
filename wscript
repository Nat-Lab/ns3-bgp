# def options(opt):
#     pass

def configure(conf):
    conf.env.append_value("LINKFLAGS", ["-lbgp"])

def build(bld):
    module = bld.create_ns3_module('bgp', ['core', 'internet', 'network'])
    module.source = [
        'model/bgp.cc',
        'model/bgp-routing.cc',
        'model/bgp-ns3-clock.cc',
        'model/bgp-log.cc',
        'helper/bgp-helper.cc',
        ]

    # module_test = bld.create_ns3_module_test_library('bgp')
    # module_test.source = [
    #    'test/bgp-test-suite.cc',
    #    ]

    headers = bld(features='ns3header')
    headers.module = 'bgp'
    headers.source = [
        'model/bgp.h',
        'model/bgp-routing.h',
        'model/bgp-ns3-clock.h',
        'model/bgp-log.h',
        'helper/bgp-helper.h',
        ]

    # if bld.env.ENABLE_EXAMPLES:
    #    bld.recurse('examples')

    # bld.ns3_python_bindings()

