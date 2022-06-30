-- Define the knobs, buttons, etc. of the device
-- This is also used to check if this device is a match (model, manufacturer and/or device inquiry status)
function controller_info()
	return {
		-- model name for this device
		model = 'MPK mini 3',
		-- manufacturer name for this device
		manufacturer = 'Akai',

		-- All buttons, knobs, keyboard, possible pedals are defined here
		items = {
				-- The default midiType is 'Absolute', it only has to be defined, if it is different
				{name='Pitch Bend', label='Pitch', objectType='Wheel', midi={0xE0,MIDI_MSB,MIDI_LSB}},
				{name='Modulation', label='Mod', objectType='Wheel', midi={0xB0,0x01,MIDI_LSB}},
				{name='Keyboard', label='MPK mini', objectType='Keyboard', midiType='Keyboard', startKey=30, numberKeys=25, midi={0x90,MIDI_Wildcard,MIDI_Wildcard}},
				{name='Tap Tempo', label='Tap Tempo', objectType='Button', midiType='Momentary', midi={0x80,0x00,0x00}},

				{name='Sustain Pedal', label='Sustain', objectType='Sustain Pedal', midiType='Momentary', midi={0xB0,0x40,MIDI_LSB}},

				-- Knob
				{name='Knob 1', label='K1', objectType='Knob', midi={0xB0,0x46,MIDI_LSB}},
				{name='Knob 2', label='K2', objectType='Knob', midi={0xB0,0x47,MIDI_LSB}},
				{name='Knob 3', label='K3', objectType='Knob', midi={0xB0,0x48,MIDI_LSB}},
				{name='Knob 4', label='K4', objectType='Knob', midi={0xB0,0x49,MIDI_LSB}},
				{name='Knob 5', label='K5', objectType='Knob', midi={0xB0,0x4A,MIDI_LSB}},
				{name='Knob 6', label='K6', objectType='Knob', midi={0xB0,0x4B,MIDI_LSB}},
				{name='Knob 7', label='K7', objectType='Knob', midi={0xB0,0x4C,MIDI_LSB}},
				{name='Knob 8', label='K8', objectType='Knob', midi={0xB0,0x4D,MIDI_LSB}},

				-- PAD Bank A
				{name='Pad 1', label='PAD A1', objectType='Drumpad', midiType='Note', midi={0x99,0x24,MIDI_LSB}},
				{name='Pad 2', label='PAD A2', objectType='Drumpad', midiType='Note', midi={0x99,0x25,MIDI_LSB}},
				{name='Pad 3', label='PAD A3', objectType='Drumpad', midiType='Note', midi={0x99,0x26,MIDI_LSB}},
				{name='Pad 4', label='PAD A4', objectType='Drumpad', midiType='Note', midi={0x99,0x27,MIDI_LSB}},
				{name='Pad 5', label='PAD A5', objectType='Drumpad', midiType='Note', midi={0x99,0x28,MIDI_LSB}},
				{name='Pad 6', label='PAD A6', objectType='Drumpad', midiType='Note', midi={0x99,0x29,MIDI_LSB}},
				{name='Pad 7', label='PAD A7', objectType='Drumpad', midiType='Note', midi={0x99,0x2A,MIDI_LSB}},
				{name='Pad 8', label='PAD A8', objectType='Drumpad', midiType='Note', midi={0x99,0x2B,MIDI_LSB}},
				-- PAD Bank B
				{name='Pad 9', label='PAD B1', objectType='Drumpad', midiType='Note', midi={0x99,0x2C,MIDI_LSB}},
				{name='Pad 10', label='PAD B2', objectType='Drumpad', midiType='Note', midi={0x99,0x2D,MIDI_LSB}},
				{name='Pad 11', label='PAD B3', objectType='Drumpad', midiType='Note', midi={0x99,0x2E,MIDI_LSB}},
				{name='Pad 12', label='PAD B4', objectType='Drumpad', midiType='Note', midi={0x99,0x2F,MIDI_LSB}},
				{name='Pad 13', label='PAD B5', objectType='Drumpad', midiType='Note', midi={0x99,0x30,MIDI_LSB}},
				{name='Pad 14', label='PAD B6', objectType='Drumpad', midiType='Note', midi={0x99,0x31,MIDI_LSB}},
				{name='Pad 15', label='PAD B7', objectType='Drumpad', midiType='Note', midi={0x99,0x32,MIDI_LSB}},
				{name='Pad 16', label='PAD B8', objectType='Drumpad', midiType='Note', midi={0x99,0x33,MIDI_LSB}},

				-- PAD Control change Bank A
				{name='Pad CC 1', label='CC A1', objectType='Button', midiType='Alternating', midi={0xB9,0x10,MIDI_LSB}},
				{name='Pad CC 2', label='CC A2', objectType='Button', midiType='Alternating', midi={0xB9,0x11,MIDI_LSB}},
				{name='Pad CC 3', label='CC A3', objectType='Button', midiType='Alternating', midi={0xB9,0x12,MIDI_LSB}},
				{name='Pad CC 4', label='CC A4', objectType='Button', midiType='Alternating', midi={0xB9,0x13,MIDI_LSB}},
				{name='Pad CC 5', label='CC A5', objectType='Button', midiType='Alternating', midi={0xB9,0x14,MIDI_LSB}},
				{name='Pad CC 6', label='CC A6', objectType='Button', midiType='Alternating', midi={0xB9,0x15,MIDI_LSB}},
				{name='Pad CC 7', label='CC A7', objectType='Button', midiType='Alternating', midi={0xB9,0x16,MIDI_LSB}},
				{name='Pad CC 8', label='CC A8', objectType='Button', midiType='Alternating', midi={0xB9,0x17,MIDI_LSB}},
				-- PAD Control change Bank B
				{name='Pad CC 9', label='CC B1', objectType='Button', midiType='Alternating', midi={0xB9,0x18,MIDI_LSB}},
				{name='Pad CC 10', label='CC B2', objectType='Button', midiType='Alternating', midi={0xB9,0x19,MIDI_LSB}},
				{name='Pad CC 11', label='CC B3', objectType='Button', midiType='Alternating', midi={0xB9,0x1A,MIDI_LSB}},
				{name='Pad CC 12', label='CC B4', objectType='Button', midiType='Alternating', midi={0xB9,0x1B,MIDI_LSB}},
				{name='Pad CC 13', label='CC B5', objectType='Button', midiType='Alternating', midi={0xB9,0x1C,MIDI_LSB}},
				{name='Pad CC 14', label='CC B6', objectType='Button', midiType='Alternating', midi={0xB9,0x1D,MIDI_LSB}},
				{name='Pad CC 15', label='CC B7', objectType='Button', midiType='Alternating', midi={0xB9,0x1E,MIDI_LSB}},
				{name='Pad CC 16', label='CC B8', objectType='Button', midiType='Alternating', midi={0xB9,0x1F,MIDI_LSB}},


				-- PAD  Program change Bank A
				{name='Pad PC 1', label='PROG CHANGE A1', objectType='Button', midiType='Single', midi={0xC9,0x00}},
				{name='Pad PC 2', label='PROG CHANGE A2', objectType='Button', midiType='Single', midi={0xC9,0x01}},
				{name='Pad PC 3', label='PROG CHANGE A3', objectType='Button', midiType='Single', midi={0xC9,0x02}},
				{name='Pad PC 4', label='PROG CHANGE A4', objectType='Button', midiType='Single', midi={0xC9,0x03}},
				{name='Pad PC 5', label='PROG CHANGE A5', objectType='Button', midiType='Single', midi={0xC9,0x04}},
				{name='Pad PC 6', label='PROG CHANGE A6', objectType='Button', midiType='Single', midi={0xC9,0x05}},
				{name='Pad PC 7', label='PROG CHANGE A7', objectType='Button', midiType='Single', midi={0xC9,0x06}},
				{name='Pad PC 8', label='PROG CHANGE A8', objectType='Button', midiType='Single', midi={0xC9,0x07}},
				-- PAD Program change Bank B
				{name='Pad PC 9', label='PROG CHANGE B1', objectType='Button', midiType='Single', midi={0xC9,0x08}},
				{name='Pad PC 10', label='PROG CHANGE B2', objectType='Button', midiType='Single', midi={0xC9,0x09}},
				{name='Pad PC 11', label='PROG CHANGE B3', objectType='Button', midiType='Single', midi={0xC9,0x0A}},
				{name='Pad PC 12', label='PROG CHANGE B4', objectType='Button', midiType='Single', midi={0xC9,0x0B}},
				{name='Pad PC 13', label='PROG CHANGE B5', objectType='Button', midiType='Single', midi={0xC9,0x0C}},
				{name='Pad PC 14', label='PROG CHANGE B6', objectType='Button', midiType='Single', midi={0xC9,0x0D}},
				{name='Pad PC 15', label='PROG CHANGE B7', objectType='Button', midiType='Single', midi={0xC9,0x0E}},
				{name='Pad PC 16', label='PROG CHANGE B8', objectType='Button', midiType='Single', midi={0xC9,0x0F}},


			}
		}
end
