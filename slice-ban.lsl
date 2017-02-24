#include "lib/avatar.lsl" 

float TIMER_INTERVAL = 30.0;
float MIN_ALTITUDE = 1900.0;
float MAX_ALTITUDE = 2100.0;

key SOPHIE = "d695b17a-6504-4697-a945-0b71c53e4771";


debug(string message)
{
    // llOwnerSay("Debug: " + message);
}

eject_agent(key agent)
{
    string message = "Attempting to eject " + format_name(agent) + 
        " UUID: " + (string)agent;
    llInstantMessage(SOPHIE, message);
    debug(message);
    llTeleportAgentHome(agent);
    llSleep(2.0);
    llEjectFromLand(agent);
}

integer is_height_ok(key agent)
{
    list info = llGetObjectDetails(agent, [OBJECT_POS]);
    vector position = llList2Vector(info, 0);
    
    return position.z >= MIN_ALTITUDE && position.z <= MAX_ALTITUDE;
}

integer is_spont(string arg)
{
if("00295d99-0d32-49fa-899f-03f6703e26eb" == arg) return TRUE;
else if("00825515-1e15-4c88-aa62-8aa0e309ab21" == arg) return TRUE;
else if("01ea2931-b2b4-4817-a9dd-3ff4a1f31b72" == arg) return TRUE;
else if("01edcbc6-eea4-470b-9ec2-cb1e13c60ed3" == arg) return TRUE;
else if("02199778-2a7e-47b9-b0eb-43366caadffb" == arg) return TRUE;
else if("022ed058-f5cb-40b7-9fa0-f5e32363c4ff" == arg) return TRUE;
else if("0243108f-2068-4477-a3de-c60d8cb031f3" == arg) return TRUE;
else if("033153ff-9418-4c68-a36b-dfdbbd71db19" == arg) return TRUE;
else if("065e5a0f-37ef-4ead-b56d-115128705771" == arg) return TRUE;
else if("07c19617-75f5-42fa-92a9-61cfb9d94a74" == arg) return TRUE;
else if("07fb8a36-c650-45b6-9630-b73c6e3b42a2" == arg) return TRUE;
else if("087d23cf-3b12-47da-9d77-1161489b1de6" == arg) return TRUE;
else if("094a1075-7cde-4849-9e1b-59b6c0e3d60a" == arg) return TRUE;
else if("0a682201-9bca-4a8a-865c-93c4412d48cd" == arg) return TRUE;
else if("0c5de764-e766-4007-965b-f701209a8e8e" == arg) return TRUE;
else if("0cd3c379-8027-43f6-b624-f72b958f2bd7" == arg) return TRUE;
else if("0cdd1945-0438-4ceb-9ccc-7cdd55d84678" == arg) return TRUE;
else if("0d111036-8226-42cb-baf2-da65f6098ad7" == arg) return TRUE;
else if("0d13b14e-29b0-4192-8749-69f88e1b6aee" == arg) return TRUE;
else if("0d3d595f-aa46-4164-81e5-70ac4ddfdfcd" == arg) return TRUE;
else if("0e1e8c7f-ed76-4b6b-84d7-052101411397" == arg) return TRUE;
else if("0eb9ea03-609b-416a-aef4-363c6eb98781" == arg) return TRUE;
else if("0f02b407-a006-40ab-a7c3-5de5d03fef0d" == arg) return TRUE;
else if("0fe25e86-09a2-44bd-9cd6-c8fb0f7febcd" == arg) return TRUE;
else if("0fee3a42-c672-44d1-8370-3b531e79753b" == arg) return TRUE;
else if("107fe817-dc47-4e62-a250-5ce723dfc4ac" == arg) return TRUE;
else if("1088d07a-97c0-47b5-bf13-9a312b5a2048" == arg) return TRUE;
else if("12c8beb7-d936-4d44-80ac-d4b885f3a5ae" == arg) return TRUE;
else if("13433f91-499d-489e-afdd-34cabb4077f5" == arg) return TRUE;
else if("16383d21-3f5b-4061-869e-b9930e205697" == arg) return TRUE;
else if("1784b43d-3691-4da3-a7c0-81a72d404fe6" == arg) return TRUE;
else if("17bfab2f-4553-4720-b6fa-0f62e3c08273" == arg) return TRUE;
else if("17fdb4d1-988a-495f-8ac6-e58a0f363dcc" == arg) return TRUE;
else if("1a3c603e-c017-4442-a86a-58955a93f17f" == arg) return TRUE;
else if("1ad4668e-8447-4dd8-8303-2d7e34423872" == arg) return TRUE;
else if("1b8c18e2-5ada-45f8-b743-93bb866e8c0b" == arg) return TRUE;
else if("1c142c1d-db19-492e-8431-7189d2a5a138" == arg) return TRUE;
else if("1cd7cfd0-8c9a-4ca1-a885-b449441c4ffc" == arg) return TRUE;
else if("1db84675-55c6-4108-a84c-b2fe777f67f3" == arg) return TRUE;
else if("1dd069ec-dfcd-4c15-be3c-d3bf1478efdf" == arg) return TRUE;
else if("1ee77ae0-3b3a-4f11-9291-4345feb6886e" == arg) return TRUE;
else if("1f8b74db-a218-44a2-aa1d-ce8ca0265b25" == arg) return TRUE;
else if("1fc3d792-ad62-4b49-ac20-4f9065aa7f01" == arg) return TRUE;
else if("204f05c2-c347-4995-b2ed-4988627de0ae" == arg) return TRUE;
else if("21b1611c-8496-4933-9129-7a714fabd7f4" == arg) return TRUE;
else if("222e62a2-a3fd-401e-854e-223bdf4661c4" == arg) return TRUE;
else if("2417452e-bb03-4fd4-a457-bcc95b8e6216" == arg) return TRUE;
else if("27beb52f-fe8a-43f9-94b6-e497406a1de5" == arg) return TRUE;
else if("27f115e9-d05d-4e59-9e71-61a358444c96" == arg) return TRUE;
else if("2808b43f-f187-4edd-b421-c59d1cd4334b" == arg) return TRUE;
else if("28259976-5884-4c4f-bf3e-ba1be070a0b5" == arg) return TRUE;
else if("28f4700e-1ac9-4ff4-8ff6-37fff470d766" == arg) return TRUE;
else if("29cc7b10-8aff-4345-8167-30a78fd0cf1d" == arg) return TRUE;
else if("2a4d9d55-0f08-4ea1-8477-a1df7a8872ac" == arg) return TRUE;
else if("2c53f38c-64ab-4049-b138-08d91959b079" == arg) return TRUE;
else if("2cbc381d-38e9-403d-b34c-d3550d5a1ed7" == arg) return TRUE;
else if("2cbc3955-cfb4-4437-988f-5840cf1f2003" == arg) return TRUE;
else if("2d002ce8-762c-4e41-9f0d-ce2b4c5a2bdd" == arg) return TRUE;
else if("2eef5c63-7bf6-4345-a8ea-99535f2e0c4a" == arg) return TRUE;
else if("2f155c87-3342-4399-b8d6-1d48554554a6" == arg) return TRUE;
else if("304a1522-2b0e-467b-95a6-b71ba87305a8" == arg) return TRUE;
else if("34e27b7a-dcc9-4b3e-a0a7-173b4816f79d" == arg) return TRUE;
else if("354822b6-87df-45ef-a524-a43b71402aa4" == arg) return TRUE;
else if("359ec951-a1e6-401f-ae8f-65e86f0e806e" == arg) return TRUE;
else if("361d933c-4726-4ae4-b184-9f0941c54f47" == arg) return TRUE;
else if("363855b7-f374-4abe-aaaf-059319370255" == arg) return TRUE;
else if("370feb6e-556e-4aca-97d5-3e41cdae8a9f" == arg) return TRUE;
else if("37636992-79f0-4187-af9f-958ace93cc6b" == arg) return TRUE;
else if("377abc11-27fe-4e7b-99c7-fe02c623b855" == arg) return TRUE;
else if("37fee53a-d28d-46ff-bc10-0ca7a3564060" == arg) return TRUE;
else if("3810284a-4d44-483c-a052-436c59662fb6" == arg) return TRUE;
else if("383626a8-b34f-4675-bd67-8bf3e44522c2" == arg) return TRUE;
// CRASH else if("38843c91-07e9-416f-a2d7-fce0ae13dad6" == arg) return TRUE;
else if("38fafd2b-aad4-4d89-a9eb-690b383f31e1" == arg) return TRUE;
else if("39086d5f-a8f7-4ea7-800e-013092aa71d2" == arg) return TRUE;
else if("394b4652-9723-447a-89dd-d57ecedb016a" == arg) return TRUE;
else if("3994a680-327c-44dc-a3c7-c10655018592" == arg) return TRUE;
else if("3a6c4603-1b7f-4b40-9c87-882d9de9c0df" == arg) return TRUE;
else if("3c059958-9d59-41be-9598-e1aa4509089a" == arg) return TRUE;
else if("3c097a6f-4758-41d5-abba-ce3e017da08a" == arg) return TRUE;
else if("3cba8ec9-ce9d-46fa-97bb-3d79f3628c94" == arg) return TRUE;
else if("3d0717d5-08ba-450b-8df0-d97d5fec14e8" == arg) return TRUE;
else if("3e50df10-4f27-4c28-bbfc-86ca1289ea1e" == arg) return TRUE;
else if("3e82d6af-206d-41c2-a553-d1a9f9469411" == arg) return TRUE;
else if("3e91eebf-603c-4965-9d28-23649c58cfff" == arg) return TRUE;
else if("409d54b3-3899-420e-8601-6237e31cc093" == arg) return TRUE;
else if("4196e1dd-963c-41f1-89cc-cd55201d5b0b" == arg) return TRUE;
else if("41eb03ce-ea3d-4522-872c-c86c91a2031a" == arg) return TRUE;
else if("41f1e187-5c47-4b90-b28c-4ff36a89ced2" == arg) return TRUE;
else if("42121788-5b17-47b5-b39b-da84dd6d03e7" == arg) return TRUE;
else if("422ed225-852b-4baa-8bdf-d6a4d6d0250a" == arg) return TRUE;
else if("43046d52-58d8-498c-9dd2-cd7105bf8000" == arg) return TRUE;
else if("45890f13-940e-48ee-b421-45c68a72c61f" == arg) return TRUE;
else if("45b3c3b8-fdf0-4b6b-8347-b5dee1e8c7ab" == arg) return TRUE;
else if("45d36d65-92df-4129-9959-162fa3f18546" == arg) return TRUE;
else if("46033566-a095-441a-bdb8-03f9b9be5500" == arg) return TRUE;
else if("46ff47b2-70b4-4765-ac53-acd3a2d9e134" == arg) return TRUE;
else if("47f37397-9596-41cb-8713-96c36ea2b685" == arg) return TRUE;
else if("4af46ba0-7b73-4d52-8d51-4495cd9769e5" == arg) return TRUE;
else if("4e1f415e-5513-47e3-8322-d488b0693e40" == arg) return TRUE;
else if("4f9c8744-e41d-4c1f-872d-9530d5da3f98" == arg) return TRUE;
else if("4faad2bb-60aa-41f2-ae76-ddf197b9817a" == arg) return TRUE;
else if("4fbd43ad-0e65-4ef6-9bf8-4b24d042ac92" == arg) return TRUE;
else if("501c05ec-7ef6-4479-bcbd-fe3ce3b1cdbb" == arg) return TRUE;
else if("50b3f735-572f-468c-9afa-871ee3f82ffa" == arg) return TRUE;
else if("50b864ce-1a3a-4ad3-8def-5e1bde6a77ee" == arg) return TRUE;
else if("51873b02-5c15-47a2-a758-924cdde1e7ce" == arg) return TRUE;
else if("521581e4-e52d-4675-9f62-38929777494e" == arg) return TRUE;
else if("527b543f-1d99-47f5-9719-8f735e124b10" == arg) return TRUE;
else if("52948e52-32a0-46d1-add6-4aeb11c8f1b8" == arg) return TRUE;
else if("53c672f5-4043-4f10-8f07-cb546c62428d" == arg) return TRUE;
else if("563ab7c9-b178-4e31-b213-49a08b048f13" == arg) return TRUE;
else if("567b1777-63f3-4f1e-84ab-ced673b4542a" == arg) return TRUE;
else if("56d6c690-ee5e-43f2-9121-1d5246089949" == arg) return TRUE;
else if("57b1841a-80c3-4c48-97af-0fd8d88d3f50" == arg) return TRUE;
else if("58409eb5-a0db-4983-b76d-cca9bb1d12c7" == arg) return TRUE;
else if("5a06c2a5-96dc-479d-9630-e07c35b69101" == arg) return TRUE;
else if("5c02ea64-a109-42a4-ab48-fc3aa3b17642" == arg) return TRUE;
else if("5c6aa920-58bc-4b4f-a5e5-570f326aa1af" == arg) return TRUE;
else if("5d689b0d-8361-4252-ba46-c8d9838d4202" == arg) return TRUE;
else if("5ec1bc4f-6ca9-402c-bd72-f0bed7f692f7" == arg) return TRUE;
else if("5f02b464-3837-49f0-b50b-aaf944d8e9d2" == arg) return TRUE;
else if("5f3a066e-a5c9-44ec-9e0e-be2a09dee8cd" == arg) return TRUE;
else if("5fe998ba-861b-46b0-9b02-c90df590992d" == arg) return TRUE;
else if("6009ed7d-127a-4826-b443-03b4a54f4d1d" == arg) return TRUE;
else if("60481a5f-f52a-4dec-b3b4-46bde3755d6f" == arg) return TRUE;
else if("60f538c3-bf80-4761-bca5-9f389a9988dc" == arg) return TRUE;
else if("613e51ea-7bfb-4cda-942b-853293df2e53" == arg) return TRUE;
else if("6200a48b-d6fe-4190-b8c2-e861445f4623" == arg) return TRUE;
else if("63df190a-3fa0-4019-9afb-a12e962531e4" == arg) return TRUE;
else if("64c72968-8666-4af6-b64e-260254d54c2d" == arg) return TRUE;
else if("6601ab9a-1a4d-494d-8e93-d7d9cc18f209" == arg) return TRUE;
else if("6603c1bb-921d-4a22-b90b-21888cd684dc" == arg) return TRUE;
else if("66750ef8-bf16-40ff-b3a5-f659ece81f57" == arg) return TRUE;
else if("67310689-26c6-4f95-b5e3-ba6f7695b429" == arg) return TRUE;
else if("67960bcd-e568-4fbf-8f3a-d8dcced51c9c" == arg) return TRUE;
else if("68e1d2c6-2678-4af4-81fa-4a1a6394cdb3" == arg) return TRUE;
else if("6922e807-3306-4c00-b511-51d13b885a25" == arg) return TRUE;
else if("69c29d92-49db-4bc6-a88b-50a8f86e9263" == arg) return TRUE;
else if("6a48e7e2-71e8-4a5c-b49f-08128cbda6d7" == arg) return TRUE;
else if("6b3ff82b-c5f0-49f0-b80f-9530e5effb91" == arg) return TRUE;
else if("6c917ac1-ac8c-4335-9ce7-3a0ee8b5ded4" == arg) return TRUE;
else if("6d5f9a81-19b9-42e3-84a0-d4af2427343b" == arg) return TRUE;
else if("6dbbe504-6fef-49bb-84c6-238d9ff13252" == arg) return TRUE;
else if("6f067037-058d-4947-bec8-9e3d15baf359" == arg) return TRUE;
else if("6f6e06f3-265d-49c3-b264-56f60c660dad" == arg) return TRUE;
else if("700d1522-93b6-4cfe-a69e-bc798e2b61b6" == arg) return TRUE;
else if("701a6860-36c8-45af-afe6-35f8f64115d9" == arg) return TRUE;
else if("7059b20a-0d3d-4d84-9ad1-d720697cf999" == arg) return TRUE;
else if("71a133aa-4ac8-498f-8137-06b6df9103df" == arg) return TRUE;
else if("72b01ea0-9478-48a4-85eb-88e81b9f3a38" == arg) return TRUE;
else if("73155aa8-1124-4a4c-9fea-86539333369d" == arg) return TRUE;
else if("7489f632-5758-4890-b4c0-58b6b94be754" == arg) return TRUE;
else if("74fc9cfe-c69c-49c2-a1ee-b6b177a26ebd" == arg) return TRUE;
else if("77a4b67f-d459-40e7-987e-4c5194a14ddc" == arg) return TRUE;
else if("78ba7ab4-615b-498e-949d-c16b501f40a1" == arg) return TRUE;
else if("7987789e-26ae-4f1d-9f1e-b410f95e8616" == arg) return TRUE;
else if("7a93b9a0-828b-4014-8c26-c5da55c21a76" == arg) return TRUE;
else if("7dbecbad-70d2-4870-b4b2-c041a53e3b2f" == arg) return TRUE;
else if("7e1043d8-3dfb-4e4b-b641-cd24c1866a37" == arg) return TRUE;
else if("7e12820b-151b-4a32-b3d6-0b83590cc793" == arg) return TRUE;
else if("7f6751a6-fe62-4457-9056-81c11ffdefd5" == arg) return TRUE;
else if("7fd16d3d-dc77-4172-b610-1b4375819000" == arg) return TRUE;
else if("80299f44-942d-44db-87bf-8dfb0ddcba82" == arg) return TRUE;
else if("81405e60-9253-43f7-9be4-16c34950d003" == arg) return TRUE;
else if("81ff0758-a7ea-4abf-84c1-f01a28f7b6c2" == arg) return TRUE;
else if("83e5c901-6892-424b-a7b8-2eb9e2bf4798" == arg) return TRUE;
else if("83f8f63c-7c82-451a-9522-ffdbd7f3690f" == arg) return TRUE;
else if("84cd2b49-cb01-4738-b973-46e22031a5ad" == arg) return TRUE;
else if("85031a54-9605-43e4-b3d6-abd1c15a0e90" == arg) return TRUE;
else if("850323e6-32dc-466a-b771-5e6c912bf08c" == arg) return TRUE;
else if("86362990-0790-40ea-ac45-0949eccff753" == arg) return TRUE;
else if("8888efa6-b834-46b4-915e-f324604aff87" == arg) return TRUE;
else if("8930aac7-5e24-4cd8-803c-31d8ab8ac20d" == arg) return TRUE;
else if("8bf46001-2c74-4a25-962f-e45740bdfeab" == arg) return TRUE;
else if("8c37b6df-5582-4a9b-b976-717ba582012c" == arg) return TRUE;
else if("8cccc4f5-bc2d-49f1-b468-fd57cd6e9464" == arg) return TRUE;
else if("8d12850b-43e4-426b-9083-7637f9bc7c48" == arg) return TRUE;
else if("8d34956c-84b7-4369-a718-ce9ed6534591" == arg) return TRUE;
else if("8d850fb8-f57d-4709-bb3c-7e4db2be9a69" == arg) return TRUE;
else if("8d9b66b9-d46b-4025-b39b-1e8b0906fe2b" == arg) return TRUE;
else if("8f252b9c-40b9-403f-94eb-3bcb86a5b482" == arg) return TRUE;
else if("92359892-a8d1-41c4-b946-56240acaf692" == arg) return TRUE;
else if("92efea9f-d379-40a6-bacd-7ececfaf32cc" == arg) return TRUE;
else if("93208aaf-6f80-4bdf-b452-b192b679bfc1" == arg) return TRUE;
else if("9330f7e9-f536-46d2-87c3-ce7300a092a3" == arg) return TRUE;
else if("93dc944d-4e5f-4194-9aff-b56b21f631e7" == arg) return TRUE;
else if("940fcebc-b77d-4d32-a89b-50a4c0b883f7" == arg) return TRUE;
else if("94a1bfcb-6666-48f8-bedb-bee4e33c3724" == arg) return TRUE;
else if("95b53a7a-03ed-47df-9b82-8e95d1011330" == arg) return TRUE;
else if("96a5b05b-6d42-4f61-97a4-15f6f36db46a" == arg) return TRUE;
else if("979c7763-f858-4c73-9da0-3ceb7c53ea88" == arg) return TRUE;
else if("97c81fe1-d81e-43d5-abf4-1b7d6d7a627e" == arg) return TRUE;
else if("988c2752-52bd-4476-9045-aa0f9e738408" == arg) return TRUE;
else if("98906b2e-f155-4fb6-91a3-3752a3c29666" == arg) return TRUE;
else if("98a89261-0f97-4327-bf12-221ab11b1682" == arg) return TRUE;
else if("98b65ae4-9f27-4936-b03d-5866101e118f" == arg) return TRUE;
else if("997253d7-77b7-4574-a2ae-6a24849e1a30" == arg) return TRUE;
else if("9989ba65-cd4d-40af-ae32-2225512be4b0" == arg) return TRUE;
else if("99a833b3-8d5b-406c-a51f-a195c8cbabe4" == arg) return TRUE;
else if("99bd2571-6af6-40d7-82cb-30b6d4407a51" == arg) return TRUE;
else if("99e57b74-cf23-407e-9a6c-dde2fe4d67d2" == arg) return TRUE;
else if("9a534519-832b-41e8-bd70-2940a6633215" == arg) return TRUE;
else if("9c01cd24-6082-4e72-8ddd-59eb0b52dc88" == arg) return TRUE;
else if("9f0d03e8-7e31-488c-9d51-88801e3c28d0" == arg) return TRUE;
else if("9f7b8303-f4db-4304-ba04-4f2015f7d7d3" == arg) return TRUE;
else if("a101338c-e851-4c0e-a840-b05129b332e9" == arg) return TRUE;
else if("a2c4b3ca-2fa8-4515-a1b3-0b85cdf684c6" == arg) return TRUE;
else if("a37de056-5b8b-460e-8f4b-2896888f3e28" == arg) return TRUE;
else if("a5339bba-9380-43dd-8275-9fd34f4d0160" == arg) return TRUE;
else if("a5c3c972-2d0d-425b-97e4-68c0be2f17dc" == arg) return TRUE;
else if("a602a974-6014-41f9-b08f-79de76f48d5d" == arg) return TRUE;
else if("a68afd3c-3f10-49be-b2b7-453d6ec52f94" == arg) return TRUE;
else if("a717769d-3363-41f6-b341-84a913dcd9c3" == arg) return TRUE;
else if("a8389e74-1952-4557-84d9-8fc234046ad1" == arg) return TRUE;
else if("a846e0cd-ea6f-4f87-9270-e9b0e4d9165a" == arg) return TRUE;
else if("a997b7f4-a9b6-4aad-9a6f-a57d6fa9ccec" == arg) return TRUE;
else if("a9b92129-f838-44ea-889c-a34881aee958" == arg) return TRUE;
else if("a9bc0c29-5255-4e9a-9484-2676eb611458" == arg) return TRUE;
else if("ab3c4efd-b4b0-4377-9313-7133c40a57cd" == arg) return TRUE;
else if("ab7251d3-d257-43a5-a89f-f73e6f471da6" == arg) return TRUE;
else if("ac20d226-0c63-4ab8-87ad-f37722579378" == arg) return TRUE;
else if("ac93c542-a3f1-4f4d-9ea1-aa41393369a2" == arg) return TRUE;
else if("aebcfce5-b2e5-45d5-921e-5cc9d5851527" == arg) return TRUE;
else if("aec1a8f1-6014-4434-9f30-bb84db5ebf95" == arg) return TRUE;
else if("af324332-97c5-489f-be0b-f69eba8bf818" == arg) return TRUE;
else if("af51a5b9-3181-4860-872a-5b052196ee58" == arg) return TRUE;
else if("af63ca5c-6773-4059-a31d-aff4975a4f12" == arg) return TRUE;
else if("afd0e726-043b-4cb7-9edb-18bf5e36e635" == arg) return TRUE;
else if("aff84121-6411-47cc-ba18-610c0c9f2f6b" == arg) return TRUE;
else if("b103be15-5b33-490c-9f74-137d8e39e34b" == arg) return TRUE;
else if("b159472e-19dc-4104-892b-36c9072cb2c4" == arg) return TRUE;
else if("b22dfb03-a571-4ae6-a0fb-0a92880ed80a" == arg) return TRUE;
else if("b2a38f53-95df-4469-a6f3-71d5f9958b9a" == arg) return TRUE;
else if("b2d8b1cc-7c60-4ac3-832c-5544be9b80ce" == arg) return TRUE;
else if("b3a34f4e-2ec9-40cb-a63b-498a22cc4ed4" == arg) return TRUE;
else if("b44fca24-a0e4-4227-8094-43ef0176c26b" == arg) return TRUE;
else if("b48c8c53-2abf-4fd9-a50f-dfc0e2950e7e" == arg) return TRUE;
else if("b4cf50ee-76b7-4bcb-8f06-df693efdda4d" == arg) return TRUE;
else if("b53d7217-867d-4192-94f3-69b37fc15a37" == arg) return TRUE;
else if("b5fed546-150f-4350-a579-eaec1f1d4ecc" == arg) return TRUE;
else if("b6996d90-61a3-4126-8636-b095c76358d0" == arg) return TRUE;
else if("b6cb9014-a050-45c1-9816-b1c45bfe6c75" == arg) return TRUE;
else if("b8efa3c4-4fac-45a0-820d-754f5b655f72" == arg) return TRUE;
else if("ba2d3198-aa86-4317-99a5-cdacff634244" == arg) return TRUE;
else if("ba347977-b632-4c00-bb84-02d7481448d8" == arg) return TRUE;
else if("baa2effb-2bac-484c-aab1-03cb2de54a88" == arg) return TRUE;
else if("baea4302-2cf0-4d41-96d4-28ba82608348" == arg) return TRUE;
else if("bb7b8011-f821-451b-a09f-87346b6de41c" == arg) return TRUE;
else if("bb9b3110-35fb-4913-b4be-79e1cae508b5" == arg) return TRUE;
else if("bdc1425e-cf8b-4b81-b6a6-bebf79501bb1" == arg) return TRUE;
else if("c16f0188-7dc6-4689-8d05-c83cfaec66f5" == arg) return TRUE;
else if("c2e21e33-09c0-47b6-bc86-235c18553298" == arg) return TRUE;
else if("c3152e90-d880-4fdb-9487-6b62e849d2ab" == arg) return TRUE;
else if("c3991254-78be-4584-bd02-f8ceb2e9c4f1" == arg) return TRUE;
else if("c6f244b5-b70b-42d2-bac5-d5ea5b0f06de" == arg) return TRUE;
else if("c8f5e874-d53a-4e65-8b83-3acc6cc656ad" == arg) return TRUE;
else if("ca8fcd06-7872-45ef-bc48-e426a0ca6737" == arg) return TRUE;
else if("cc492086-70ff-4220-a0a8-c9241e999e2f" == arg) return TRUE;
else if("cd1ce812-b0a6-49b8-b71b-ee10f6edf085" == arg) return TRUE;
else if("cd8eabdc-e15b-4b0f-bd2c-e30e306305e2" == arg) return TRUE;
else if("cdac5f50-1bcc-42fa-a98e-ffe7170b3e38" == arg) return TRUE;
else if("ce442bde-12df-4329-8c00-7fa0d3079231" == arg) return TRUE;
else if("ce830cfb-2ebf-450f-8be6-d5908bd39ae5" == arg) return TRUE;
else if("cf1d3d13-a027-4934-9431-12ca92323c9c" == arg) return TRUE;
else if("cf8d06d6-c4c6-4991-8da9-fda3767f2e28" == arg) return TRUE;
else if("cfb7a5bd-1d99-4edc-86b7-56bf45257fd6" == arg) return TRUE;
else if("d2590a53-2c07-4c0b-ba8c-fdcf16485dee" == arg) return TRUE;
else if("d2702e76-6ceb-4326-b708-7968ef383bea" == arg) return TRUE;
else if("d3867cdd-1074-44a0-b886-1018ce012f64" == arg) return TRUE;
else if("d454ab2e-8971-4b4e-b8ee-ce7f060d00fb" == arg) return TRUE;
else if("d4c0ce22-f931-46ad-8c22-abb60ad3c360" == arg) return TRUE;
else if("d67f6171-2d74-4ae8-a2ae-215c8eeac03d" == arg) return TRUE;
else if("d695b17a-6504-4697-a945-0b71c53e4771" == arg) return TRUE;
else if("d855598c-9db6-4f04-a824-0dda7cd5087c" == arg) return TRUE;
else if("d988a844-268b-485d-94d1-92c4dfbd52cb" == arg) return TRUE;
else if("db0ded52-a635-43f0-82f5-68c4c0ad7bd9" == arg) return TRUE;
else if("db6254f0-707e-4d56-bf0f-91058f7b1805" == arg) return TRUE;
else if("db7145a2-64f6-4716-86b0-b183e5573760" == arg) return TRUE;
else if("dcf1cfe3-acc2-4096-a54d-78502513178f" == arg) return TRUE;
else if("dd5a4b12-2f3c-48ff-9608-c8c8fe87300d" == arg) return TRUE;
else if("de044347-daa8-40f2-b739-60d378ea56a4" == arg) return TRUE;
else if("df3a72e8-915e-4aca-b4b9-85da475bc0b6" == arg) return TRUE;
else if("e0025c9e-a008-48e2-b3c3-99e7722267f0" == arg) return TRUE;
else if("e222572b-2aa3-44be-b57e-be2fece260ba" == arg) return TRUE;
else if("e29846a6-25ad-4834-9c94-2380012cec34" == arg) return TRUE;
else if("e2cae0a8-2218-4dd6-a3b3-93a62f1b027c" == arg) return TRUE;
else if("e3ccb13d-9136-4596-aa10-fbf5c430948a" == arg) return TRUE;
else if("e40cb2cd-fe0c-4f73-a743-9fe6aba7c465" == arg) return TRUE;
else if("e43b94a9-e5a4-4dbc-84e9-77b063cdade7" == arg) return TRUE;
else if("e68cdfd6-1f15-42a8-bf8c-36bb3c09f238" == arg) return TRUE;
else if("e6aa6c25-0075-40f6-a955-c2c5cd10a4a7" == arg) return TRUE;
else if("e7dffc23-11f3-4643-a61b-212dc5e470fc" == arg) return TRUE;
else if("e85a6670-b472-493b-a8ce-fdbcb38a21cc" == arg) return TRUE;
else if("e8d45e67-f2f2-41ec-8d07-23d11270ce0b" == arg) return TRUE;
else if("e941cd6e-e2a4-4299-9b8d-0744514651e8" == arg) return TRUE;
else if("ec38e33a-1002-48d1-ab6a-8719d75a5f95" == arg) return TRUE;
else if("ed9daf8f-72ff-48b2-bcee-373206871395" == arg) return TRUE;
else if("edc42b97-b499-42b8-b29e-32a3a9fc1690" == arg) return TRUE;
else if("f0a297ae-7702-4c2b-813c-69ce18e476a9" == arg) return TRUE;
else if("f2a94938-ac95-4516-aa32-4ea469d76dc9" == arg) return TRUE;
else if("f2f88c04-f918-46b6-b686-471689489954" == arg) return TRUE;
else if("f3801513-27b4-40c1-8993-2bfd430a5353" == arg) return TRUE;
else if("f3c239a3-4b0b-4ea0-b2cf-26bb89238bfb" == arg) return TRUE;
else if("f405a2b0-4c78-48ec-aa8d-21627484c9dd" == arg) return TRUE;
else if("f4c9baa3-9a77-408c-92c6-16a2c12fe791" == arg) return TRUE;
else if("f53afb31-f39b-440c-8d4e-708dcfa6b033" == arg) return TRUE;
else if("f53c630c-76ef-44ae-a588-b0f0a338e40b" == arg) return TRUE;
else if("f57f5380-a6d3-4e54-b5a5-c8c713edd127" == arg) return TRUE;
else if("f7b1bd50-5453-4d29-8175-3a35bc0f9464" == arg) return TRUE;
else if("f9477ae3-c3eb-4ca4-84d1-77ce40547b1c" == arg) return TRUE;
else if("f95d4c92-0fa5-438b-87c8-8cea0fef2d80" == arg) return TRUE;
else if("fa9bca24-8c1f-4b23-b619-9260aac09d30" == arg) return TRUE;
else if("fab1702c-3ed5-4583-a098-1f7f334fddf6" == arg) return TRUE;
else if("fae49864-6e12-4702-a73d-986e5cced73e" == arg) return TRUE;
else if("fbd74fa8-32ad-4eff-b438-8f8c15111070" == arg) return TRUE;
else if("fea1e3d3-f68a-4e0c-9312-f9ba5189b456" == arg) return TRUE;
else if("fee36359-312d-4203-8e84-bf0c4c86ba10" == arg) return TRUE;
else if("ff88a660-e517-4caf-9343-e6c36365f044" == arg) return TRUE;
else if("ffa4f0ec-b0d3-449f-85f9-e6f116c4716e" == arg) return TRUE;
else if("3a10fe7b-0778-4732-8b42-0811d59b95a5" == arg) return TRUE;
else if("12b9e342-f3f0-4b58-8c7b-72bd5e350741" == arg) return TRUE;
return FALSE;
}

integer is_active_group(key agent)
{
    return llSameGroup(agent);
}

integer allowed(key agent)
{
    if(is_active_group(agent)) return TRUE;
    if(is_spont((string)agent)) return TRUE;
    if(is_height_ok(agent)) return TRUE;
    
    return FALSE;
}

default{
    state_entry()
    {
        llSetTimerEvent(TIMER_INTERVAL);
    }
    
    timer()
    {
        list agents = llGetAgentList(AGENT_LIST_PARCEL, []);
        integer count = llGetListLength(agents);
        // debug("Found # of agents: " + (string)count);
        debug("Free: " + (string)llGetFreeMemory());
        while(count-- > 0)
        {
            key agent = llList2Key(agents, count);
            if(!allowed(agent))
                eject_agent(agent);
        }
    }
}
