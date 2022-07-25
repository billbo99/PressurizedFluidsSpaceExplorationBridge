local compressor = nil
if data.raw["furnace"]["fluid-compressor"] then
    compressor = data.raw["furnace"]["fluid-compressor"]
elseif data.raw["assembling-machine"]["fluid-compressor"] then
    compressor = data.raw["assembling-machine"]["fluid-compressor"]
end

local decompressor = nil
if data.raw["furnace"]["fluid-decompressor"] then
    decompressor = data.raw["furnace"]["fluid-decompressor"]
elseif data.raw["assembling-machine"]["fluid-decompressor"] then
    decompressor = data.raw["assembling-machine"]["fluid-decompressor"]
end

if compressor then
    compressor.se_allow_in_space = true
end

if decompressor then
    decompressor.se_allow_in_space = true
end

compressedFluids.remote.forceCompressingFluid("se-molten-iron")
compressedFluids.remote.forceCompressingFluid("se-molten-copper")
compressedFluids.remote.forceCompressingFluid("se-molten-holmium")
compressedFluids.remote.forceCompressingFluid("se-molten-beryllium")

compressedFluids.remote.forceCompressingFluid("se-space-coolant-hot")
compressedFluids.remote.forceCompressingFluid("se-space-coolant-warm")
compressedFluids.remote.addTemperatureToFluid("se-space-coolant-warm", -10)
compressedFluids.remote.forceCompressingFluid("se-space-coolant-cold")
compressedFluids.remote.addTemperatureToFluid("se-space-coolant-cold", -100)
compressedFluids.remote.forceCompressingFluid("se-space-coolant-supercooled")
compressedFluids.remote.addTemperatureToFluid("se-space-coolant-supercooled", -273)

compressedFluids.remote.forceCompressingFluid("se-antimatter-stream")
compressedFluids.remote.addTemperatureToFluid("se-antimatter-stream", 10000)
compressedFluids.remote.forceCompressingFluid("se-plasma-stream")
compressedFluids.remote.addTemperatureToFluid("se-plasma-stream", 5000)
compressedFluids.remote.forceCompressingFluid("se-ion-stream")
compressedFluids.remote.addTemperatureToFluid("se-ion-stream", 5000)
compressedFluids.remote.forceCompressingFluid("se-particle-stream")
compressedFluids.remote.addTemperatureToFluid("se-particle-stream", 5000)
compressedFluids.remote.forceCompressingFluid("se-proton-stream")
compressedFluids.remote.addTemperatureToFluid("se-proton-stream", 5000)

compressedFluids.remote.forceCompressingFluid("se-secomppressing-steam")
compressedFluids.remote.addTemperatureToFluid("se-secomppressing-steam", 15)
