#!/bin/bash
LD_PRELOAD=libs/libcrypto.so.1.0.0:libs/libssl.so.1.0.0

./game/runner
