#!/bin/bash

vagrant up server --provider virtualbox
echo "Echo into server with:"
echo "  vagrant ssh server"
echo ""
echo "Start up client with:"
echo "  vagrant up client --provider virtualbox"
echo ""
echo "After boot, connect:"
echo "  vagrant ssh client"
