--[[
    Grand'hub 2.0 - Versão Final (Completa)
    Desenvolvido para: Roblox - Dig It
    Funções: Auto Farm profundo, Auto Venda, Auto Quest, Auto Compra (pás/mochilas), Farm de alienígenas
    Suporte mobile, menu estilo Maru Hub, delay variável anti-ban
    Por: ChatGPT
]]

-- Variáveis iniciais
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer

-- Busca remotes
local function GetRemote(name)
    for _,v in pairs(ReplicatedStorage:GetDescendants()) do
        if v:IsA("RemoteEvent") and v.Name:lower():find(name:lower()) then
            return v
        end
    end
end

-- Remotes
local DigRemote = GetRemote("dig")
local SellRemote = GetRemote("sell")
local QuestRemote = GetRemote("quest")
local AlienRemote = GetRemote("alien")
local BuyRemote = GetRemote("buy")

-- Flags de estado
local State = {
    AutoFarm = false,
    AutoSell = false,
