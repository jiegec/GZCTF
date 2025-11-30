BEGIN TRANSACTION;

-- step 1: rename old ones

ALTER TABLE ONLY public."AspNetRoleClaims"
    RENAME CONSTRAINT "PK_AspNetRoleClaims" to "OldPK_AspNetRoleClaims";
ALTER TABLE ONLY public."AspNetRoles"
    RENAME CONSTRAINT "PK_AspNetRoles" to "OldPK_AspNetRoles";
ALTER TABLE ONLY public."AspNetUserClaims"
    RENAME CONSTRAINT "PK_AspNetUserClaims" to "OldPK_AspNetUserClaims";
ALTER TABLE ONLY public."AspNetUserLogins"
    RENAME CONSTRAINT "PK_AspNetUserLogins" to "OldPK_AspNetUserLogins";
ALTER TABLE ONLY public."AspNetUserRoles"
    RENAME CONSTRAINT "PK_AspNetUserRoles" to "OldPK_AspNetUserRoles";
ALTER TABLE ONLY public."AspNetUserTokens"
    RENAME CONSTRAINT "PK_AspNetUserTokens" to "OldPK_AspNetUserTokens";
ALTER TABLE ONLY public."AspNetUsers"
    RENAME CONSTRAINT "PK_AspNetUsers" to "OldPK_AspNetUsers";
ALTER TABLE ONLY public."Attachments"
    RENAME CONSTRAINT "PK_Attachments" to "OldPK_Attachments";
ALTER TABLE ONLY public."Challenges"
    RENAME CONSTRAINT "PK_Challenges" to "OldPK_Challenges";
ALTER TABLE ONLY public."CheatInfo"
    RENAME CONSTRAINT "PK_CheatInfo" to "OldPK_CheatInfo";
ALTER TABLE ONLY public."Configs"
    RENAME CONSTRAINT "PK_Configs" to "OldPK_Configs";
ALTER TABLE ONLY public."Containers"
    RENAME CONSTRAINT "PK_Containers" to "OldPK_Containers";
ALTER TABLE ONLY public."DataProtectionKeys"
    RENAME CONSTRAINT "PK_DataProtectionKeys" to "OldPK_DataProtectionKeys";
ALTER TABLE ONLY public."Files"
    RENAME CONSTRAINT "PK_Files" to "OldPK_Files";
ALTER TABLE ONLY public."FlagContexts"
    RENAME CONSTRAINT "PK_FlagContexts" to "OldPK_FlagContexts";
ALTER TABLE ONLY public."GameEvents"
    RENAME CONSTRAINT "PK_GameEvents" to "OldPK_GameEvents";
ALTER TABLE ONLY public."GameNotices"
    RENAME CONSTRAINT "PK_GameNotices" to "OldPK_GameNotices";
ALTER TABLE ONLY public."Games"
    RENAME CONSTRAINT "PK_Games" to "OldPK_Games";
ALTER TABLE ONLY public."Instances"
    RENAME CONSTRAINT "PK_Instances" to "OldPK_Instances";
ALTER TABLE ONLY public."Logs"
    RENAME CONSTRAINT "PK_Logs" to "OldPK_Logs";
ALTER TABLE ONLY public."Participations"
    RENAME CONSTRAINT "PK_Participations" to "OldPK_Participations";
ALTER TABLE ONLY public."Posts"
    RENAME CONSTRAINT "PK_Posts" to "OldPK_Posts";
ALTER TABLE ONLY public."Submissions"
    RENAME CONSTRAINT "PK_Submissions" to "OldPK_Submissions";
ALTER TABLE ONLY public."TeamUserInfo"
    RENAME CONSTRAINT "PK_TeamUserInfo" to "OldPK_TeamUserInfo";
ALTER TABLE ONLY public."Teams"
    RENAME CONSTRAINT "PK_Teams" to "OldPK_Teams";
ALTER TABLE ONLY public."UserParticipations"
    RENAME CONSTRAINT "PK_UserParticipations" to "OldPK_UserParticipations";
ALTER TABLE ONLY public."__EFMigrationsHistory"
    RENAME CONSTRAINT "PK___EFMigrationsHistory" to "OldPK___EFMigrationsHistory";
ALTER TABLE ONLY public."AspNetRoleClaims"
    RENAME CONSTRAINT "FK_AspNetRoleClaims_AspNetRoles_RoleId" to "OldFK_AspNetRoleClaims_AspNetRoles_RoleId";
ALTER TABLE ONLY public."AspNetUserClaims"
    RENAME CONSTRAINT "FK_AspNetUserClaims_AspNetUsers_UserId" to "OldFK_AspNetUserClaims_AspNetUsers_UserId";
ALTER TABLE ONLY public."AspNetUserLogins"
    RENAME CONSTRAINT "FK_AspNetUserLogins_AspNetUsers_UserId" to "OldFK_AspNetUserLogins_AspNetUsers_UserId";
ALTER TABLE ONLY public."AspNetUserRoles"
    RENAME CONSTRAINT "FK_AspNetUserRoles_AspNetRoles_RoleId" to "OldFK_AspNetUserRoles_AspNetRoles_RoleId";
ALTER TABLE ONLY public."AspNetUserRoles"
    RENAME CONSTRAINT "FK_AspNetUserRoles_AspNetUsers_UserId" to "OldFK_AspNetUserRoles_AspNetUsers_UserId";
ALTER TABLE ONLY public."AspNetUserTokens"
    RENAME CONSTRAINT "FK_AspNetUserTokens_AspNetUsers_UserId" to "OldFK_AspNetUserTokens_AspNetUsers_UserId";
ALTER TABLE ONLY public."Attachments"
    RENAME CONSTRAINT "FK_Attachments_Files_LocalFileId" to "OldFK_Attachments_Files_LocalFileId";
ALTER TABLE ONLY public."Challenges"
    RENAME CONSTRAINT "FK_Challenges_Attachments_AttachmentId" to "OldFK_Challenges_Attachments_AttachmentId";
ALTER TABLE ONLY public."Challenges"
    RENAME CONSTRAINT "FK_Challenges_Containers_TestContainerId" to "OldFK_Challenges_Containers_TestContainerId";
ALTER TABLE ONLY public."Challenges"
    RENAME CONSTRAINT "FK_Challenges_Games_GameId" to "OldFK_Challenges_Games_GameId";
ALTER TABLE ONLY public."CheatInfo"
    RENAME CONSTRAINT "FK_CheatInfo_Games_GameId" to "OldFK_CheatInfo_Games_GameId";
ALTER TABLE ONLY public."CheatInfo"
    RENAME CONSTRAINT "FK_CheatInfo_Participations_SourceTeamId" to "OldFK_CheatInfo_Participations_SourceTeamId";
ALTER TABLE ONLY public."CheatInfo"
    RENAME CONSTRAINT "FK_CheatInfo_Participations_SubmitTeamId" to "OldFK_CheatInfo_Participations_SubmitTeamId";
ALTER TABLE ONLY public."CheatInfo"
    RENAME CONSTRAINT "FK_CheatInfo_Submissions_SubmissionId" to "OldFK_CheatInfo_Submissions_SubmissionId";
ALTER TABLE ONLY public."FlagContexts"
    RENAME CONSTRAINT "FK_FlagContexts_Attachments_AttachmentId" to "OldFK_FlagContexts_Attachments_AttachmentId";
ALTER TABLE ONLY public."FlagContexts"
    RENAME CONSTRAINT "FK_FlagContexts_Challenges_ChallengeId" to "OldFK_FlagContexts_Challenges_ChallengeId";
ALTER TABLE ONLY public."GameEvents"
    RENAME CONSTRAINT "FK_GameEvents_AspNetUsers_UserId" to "OldFK_GameEvents_AspNetUsers_UserId";
ALTER TABLE ONLY public."GameEvents"
    RENAME CONSTRAINT "FK_GameEvents_Games_GameId" to "OldFK_GameEvents_Games_GameId";
ALTER TABLE ONLY public."GameEvents"
    RENAME CONSTRAINT "FK_GameEvents_Teams_TeamId" to "OldFK_GameEvents_Teams_TeamId";
ALTER TABLE ONLY public."GameNotices"
    RENAME CONSTRAINT "FK_GameNotices_Games_GameId" to "OldFK_GameNotices_Games_GameId";
ALTER TABLE ONLY public."Instances"
    RENAME CONSTRAINT "FK_Instances_Challenges_ChallengeId" to "OldFK_Instances_Challenges_ChallengeId";
ALTER TABLE ONLY public."Instances"
    RENAME CONSTRAINT "FK_Instances_Containers_ContainerId" to "OldFK_Instances_Containers_ContainerId";
ALTER TABLE ONLY public."Instances"
    RENAME CONSTRAINT "FK_Instances_FlagContexts_FlagId" to "OldFK_Instances_FlagContexts_FlagId";
ALTER TABLE ONLY public."Instances"
    RENAME CONSTRAINT "FK_Instances_Participations_ParticipationId" to "OldFK_Instances_Participations_ParticipationId";
ALTER TABLE ONLY public."Participations"
    RENAME CONSTRAINT "FK_Participations_Files_WriteupId" to "OldFK_Participations_Files_WriteupId";
ALTER TABLE ONLY public."Participations"
    RENAME CONSTRAINT "FK_Participations_Games_GameId" to "OldFK_Participations_Games_GameId";
ALTER TABLE ONLY public."Participations"
    RENAME CONSTRAINT "FK_Participations_Teams_TeamId" to "OldFK_Participations_Teams_TeamId";
ALTER TABLE ONLY public."Posts"
    RENAME CONSTRAINT "FK_Posts_AspNetUsers_AuthorId" to "OldFK_Posts_AspNetUsers_AuthorId";
ALTER TABLE ONLY public."Submissions"
    RENAME CONSTRAINT "FK_Submissions_AspNetUsers_UserId" to "OldFK_Submissions_AspNetUsers_UserId";
ALTER TABLE ONLY public."Submissions"
    RENAME CONSTRAINT "FK_Submissions_Challenges_ChallengeId" to "OldFK_Submissions_Challenges_ChallengeId";
ALTER TABLE ONLY public."Submissions"
    RENAME CONSTRAINT "FK_Submissions_Games_GameId" to "OldFK_Submissions_Games_GameId";
ALTER TABLE ONLY public."Submissions"
    RENAME CONSTRAINT "FK_Submissions_Participations_ParticipationId" to "OldFK_Submissions_Participations_ParticipationId";
ALTER TABLE ONLY public."Submissions"
    RENAME CONSTRAINT "FK_Submissions_Teams_TeamId" to "OldFK_Submissions_Teams_TeamId";
ALTER TABLE ONLY public."TeamUserInfo"
    RENAME CONSTRAINT "FK_TeamUserInfo_AspNetUsers_MembersId" to "OldFK_TeamUserInfo_AspNetUsers_MembersId";
ALTER TABLE ONLY public."TeamUserInfo"
    RENAME CONSTRAINT "FK_TeamUserInfo_Teams_TeamsId" to "OldFK_TeamUserInfo_Teams_TeamsId";
ALTER TABLE ONLY public."Teams"
    RENAME CONSTRAINT "FK_Teams_AspNetUsers_CaptainId" to "OldFK_Teams_AspNetUsers_CaptainId";
ALTER TABLE ONLY public."UserParticipations"
    RENAME CONSTRAINT "FK_UserParticipations_AspNetUsers_UserId" to "OldFK_UserParticipations_AspNetUsers_UserId";
ALTER TABLE ONLY public."UserParticipations"
    RENAME CONSTRAINT "FK_UserParticipations_Games_GameId" to "OldFK_UserParticipations_Games_GameId";
ALTER TABLE ONLY public."UserParticipations"
    RENAME CONSTRAINT "FK_UserParticipations_Participations_ParticipationId" to "OldFK_UserParticipations_Participations_ParticipationId";
ALTER TABLE ONLY public."UserParticipations"
    RENAME CONSTRAINT "FK_UserParticipations_Teams_TeamId" to "OldFK_UserParticipations_Teams_TeamId";


ALTER SEQUENCE "AspNetRoleClaims_Id_seq" RENAME TO "OldAspNetRoleClaims_Id_seq";
ALTER SEQUENCE "AspNetUserClaims_Id_seq" RENAME TO "OldAspNetUserClaims_Id_seq";
ALTER SEQUENCE "Attachments_Id_seq" RENAME TO "OldAttachments_Id_seq";
ALTER SEQUENCE "Challenges_Id_seq" RENAME TO "OldChallenges_Id_seq";
ALTER SEQUENCE "CheatInfo_Id_seq" RENAME TO "OldCheatInfo_Id_seq";
ALTER SEQUENCE "DataProtectionKeys_Id_seq" RENAME TO "OldDataProtectionKeys_Id_seq";
ALTER SEQUENCE "Files_Id_seq" RENAME TO "OldFiles_Id_seq";
ALTER SEQUENCE "FlagContexts_Id_seq" RENAME TO "OldFlagContexts_Id_seq";
ALTER SEQUENCE "GameEvents_Id_seq" RENAME TO "OldGameEvents_Id_seq";
ALTER SEQUENCE "GameNotices_Id_seq" RENAME TO "OldGameNotices_Id_seq";
ALTER SEQUENCE "Games_Id_seq" RENAME TO "OldGames_Id_seq";
ALTER SEQUENCE "Logs_Id_seq" RENAME TO "OldLogs_Id_seq";
ALTER SEQUENCE "Participations_Id_seq" RENAME TO "OldParticipations_Id_seq";
ALTER SEQUENCE "Submissions_Id_seq" RENAME TO "OldSubmissions_Id_seq";
ALTER SEQUENCE "Teams_Id_seq" RENAME TO "OldTeams_Id_seq";

ALTER TABLE "AspNetRoleClaims" RENAME TO "OldAspNetRoleClaims";
ALTER TABLE "AspNetRoles" RENAME TO "OldAspNetRoles";
ALTER TABLE "AspNetUserClaims" RENAME TO "OldAspNetUserClaims";
ALTER TABLE "AspNetUserLogins" RENAME TO "OldAspNetUserLogins";
ALTER TABLE "AspNetUserRoles" RENAME TO "OldAspNetUserRoles";
ALTER TABLE "AspNetUserTokens" RENAME TO "OldAspNetUserTokens";
ALTER TABLE "AspNetUsers" RENAME TO "OldAspNetUsers";
ALTER TABLE "Attachments" RENAME TO "OldAttachments";
ALTER TABLE "Challenges" RENAME TO "OldChallenges";
ALTER TABLE "CheatInfo" RENAME TO "OldCheatInfo";
ALTER TABLE "Configs" RENAME TO "OldConfigs";
ALTER TABLE "Containers" RENAME TO "OldContainers";
ALTER TABLE "DataProtectionKeys" RENAME TO "OldDataProtectionKeys";
ALTER TABLE "Files" RENAME TO "OldFiles";
ALTER TABLE "FlagContexts" RENAME TO "OldFlagContexts";
ALTER TABLE "GameEvents" RENAME TO "OldGameEvents";
ALTER TABLE "GameNotices" RENAME TO "OldGameNotices";
ALTER TABLE "Games" RENAME TO "OldGames";
ALTER TABLE "Instances" RENAME TO "OldInstances";
ALTER TABLE "Logs" RENAME TO "OldLogs";
ALTER TABLE "Participations" RENAME TO "OldParticipations";
ALTER TABLE "Posts" RENAME TO "OldPosts";
ALTER TABLE "Submissions" RENAME TO "OldSubmissions";
ALTER TABLE "TeamUserInfo" RENAME TO "OldTeamUserInfo";
ALTER TABLE "Teams" RENAME TO "OldTeams";
ALTER TABLE "UserParticipations" RENAME TO "OldUserParticipations";
ALTER TABLE "__EFMigrationsHistory" RENAME TO "Old__EFMigrationsHistory";

DROP INDEX "EmailIndex";
DROP INDEX "IX_AspNetRoleClaims_RoleId";
DROP INDEX "IX_AspNetUserClaims_UserId";
DROP INDEX "IX_AspNetUserLogins_UserId";
DROP INDEX "IX_AspNetUserRoles_RoleId";
DROP INDEX "IX_Attachments_LocalFileId";
DROP INDEX "IX_Challenges_AttachmentId";
DROP INDEX "IX_Challenges_GameId";
DROP INDEX "IX_Challenges_TestContainerId";
DROP INDEX "IX_CheatInfo_GameId";
DROP INDEX "IX_CheatInfo_SourceTeamId";
DROP INDEX "IX_CheatInfo_SubmissionId";
DROP INDEX "IX_CheatInfo_SubmitTeamId";
DROP INDEX "IX_Containers_InstanceId";
DROP INDEX "IX_Files_Hash";
DROP INDEX "IX_FlagContexts_AttachmentId";
DROP INDEX "IX_FlagContexts_ChallengeId";
DROP INDEX "IX_GameEvents_GameId";
DROP INDEX "IX_GameEvents_TeamId";
DROP INDEX "IX_GameEvents_UserId";
DROP INDEX "IX_GameNotices_GameId";
DROP INDEX "IX_Instances_ContainerId";
DROP INDEX "IX_Instances_FlagId";
DROP INDEX "IX_Instances_ParticipationId";
DROP INDEX "IX_Participations_GameId";
DROP INDEX "IX_Participations_TeamId";
DROP INDEX "IX_Participations_TeamId_GameId";
DROP INDEX "IX_Participations_WriteupId";
DROP INDEX "IX_Posts_AuthorId";
DROP INDEX "IX_Submissions_ChallengeId";
DROP INDEX "IX_Submissions_GameId";
DROP INDEX "IX_Submissions_ParticipationId";
DROP INDEX "IX_Submissions_Status";
DROP INDEX "IX_Submissions_TeamId_ChallengeId_GameId";
DROP INDEX "IX_Submissions_UserId";
DROP INDEX "IX_TeamUserInfo_TeamsId";
DROP INDEX "IX_Teams_CaptainId";
DROP INDEX "IX_UserParticipations_ParticipationId";
DROP INDEX "IX_UserParticipations_TeamId";
DROP INDEX "IX_UserParticipations_UserId_GameId";
DROP INDEX "RoleNameIndex";
DROP INDEX "UserNameIndex";

-- step 2: create new tables, generated by pg_dump

--
-- Name: AspNetRoleClaims; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AspNetRoleClaims" (
    "Id" integer NOT NULL,
    "RoleId" uuid NOT NULL,
    "ClaimType" text,
    "ClaimValue" text
);


ALTER TABLE public."AspNetRoleClaims" OWNER TO postgres;

--
-- Name: AspNetRoleClaims_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."AspNetRoleClaims" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."AspNetRoleClaims_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: AspNetRoles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AspNetRoles" (
    "Id" uuid NOT NULL,
    "Name" character varying(256),
    "NormalizedName" character varying(256),
    "ConcurrencyStamp" text
);


ALTER TABLE public."AspNetRoles" OWNER TO postgres;

--
-- Name: AspNetUserClaims; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AspNetUserClaims" (
    "Id" integer NOT NULL,
    "UserId" uuid NOT NULL,
    "ClaimType" text,
    "ClaimValue" text
);


ALTER TABLE public."AspNetUserClaims" OWNER TO postgres;

--
-- Name: AspNetUserClaims_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."AspNetUserClaims" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."AspNetUserClaims_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: AspNetUserLogins; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AspNetUserLogins" (
    "LoginProvider" text NOT NULL,
    "ProviderKey" text NOT NULL,
    "ProviderDisplayName" text,
    "UserId" uuid NOT NULL
);


ALTER TABLE public."AspNetUserLogins" OWNER TO postgres;

--
-- Name: AspNetUserRoles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AspNetUserRoles" (
    "UserId" uuid NOT NULL,
    "RoleId" uuid NOT NULL
);


ALTER TABLE public."AspNetUserRoles" OWNER TO postgres;

--
-- Name: AspNetUserTokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AspNetUserTokens" (
    "UserId" uuid NOT NULL,
    "LoginProvider" text NOT NULL,
    "Name" text NOT NULL,
    "Value" text
);


ALTER TABLE public."AspNetUserTokens" OWNER TO postgres;

--
-- Name: AspNetUsers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AspNetUsers" (
    "Id" uuid NOT NULL,
    "Role" integer NOT NULL,
    "IP" text NOT NULL,
    "LastSignedInUtc" timestamp with time zone NOT NULL,
    "LastVisitedUtc" timestamp with time zone NOT NULL,
    "RegisterTimeUtc" timestamp with time zone NOT NULL,
    "Bio" character varying(63) NOT NULL,
    "RealName" character varying(7) NOT NULL,
    "StdNumber" character varying(31) NOT NULL,
    "ExerciseVisible" boolean DEFAULT true NOT NULL,
    "AvatarHash" character varying(64),
    "UserName" character varying(16),
    "NormalizedUserName" character varying(256),
    "Email" character varying(256),
    "NormalizedEmail" character varying(256),
    "EmailConfirmed" boolean NOT NULL,
    "PasswordHash" text,
    "SecurityStamp" text,
    "ConcurrencyStamp" text,
    "PhoneNumber" text,
    "PhoneNumberConfirmed" boolean NOT NULL,
    "TwoFactorEnabled" boolean NOT NULL,
    "LockoutEnd" timestamp with time zone,
    "LockoutEnabled" boolean NOT NULL,
    "AccessFailedCount" integer NOT NULL
);


ALTER TABLE public."AspNetUsers" OWNER TO postgres;

--
-- Name: Attachments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Attachments" (
    "Id" integer NOT NULL,
    "Type" smallint NOT NULL,
    "RemoteUrl" text,
    "LocalFileId" integer
);


ALTER TABLE public."Attachments" OWNER TO postgres;

--
-- Name: Attachments_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Attachments" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Attachments_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: GameChallenges; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."GameChallenges" (
    "Id" integer NOT NULL,
    "EnableTrafficCapture" boolean NOT NULL,
    "OriginalScore" integer NOT NULL,
    "MinScoreRate" double precision NOT NULL,
    "Difficulty" double precision NOT NULL,
    "GameId" integer NOT NULL,
    "Title" text NOT NULL,
    "Content" text NOT NULL,
    "Tag" smallint NOT NULL,
    "Type" smallint NOT NULL,
    "Hints" text,
    "IsEnabled" boolean NOT NULL,
    "AcceptedCount" integer NOT NULL,
    "SubmissionCount" integer NOT NULL,
    "ContainerImage" text,
    "MemoryLimit" integer,
    "StorageLimit" integer,
    "CPUCount" integer,
    "ContainerExposePort" integer,
    "FileName" text,
    "ConcurrencyStamp" uuid NOT NULL,
    "FlagTemplate" text,
    "AttachmentId" integer,
    "TestContainerId" uuid
);



--
-- Name: CheatInfo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."CheatInfo" (
    "SubmissionId" integer NOT NULL,
    "GameId" integer NOT NULL,
    "SubmitTeamId" integer NOT NULL,
    "SourceTeamId" integer NOT NULL
);


ALTER TABLE public."CheatInfo" OWNER TO postgres;

--
-- Name: Configs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Configs" (
    "ConfigKey" text NOT NULL,
    "Value" text
);


ALTER TABLE public."Configs" OWNER TO postgres;

--
-- Name: Containers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Containers" (
    "Id" uuid NOT NULL,
    "Image" text NOT NULL,
    "ContainerId" text NOT NULL,
    "Status" smallint NOT NULL,
    "StartedAt" timestamp with time zone NOT NULL,
    "ExpectStopAt" timestamp with time zone NOT NULL,
    "IsProxy" boolean NOT NULL,
    "IP" text NOT NULL,
    "Port" integer NOT NULL,
    "PublicIP" text,
    "PublicPort" integer,
    "GameInstanceId" integer,
    "ExerciseInstanceId" integer
);


ALTER TABLE public."Containers" OWNER TO postgres;

--
-- Name: DataProtectionKeys; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DataProtectionKeys" (
    "Id" integer NOT NULL,
    "FriendlyName" text,
    "Xml" text
);


ALTER TABLE public."DataProtectionKeys" OWNER TO postgres;

--
-- Name: DataProtectionKeys_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."DataProtectionKeys" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."DataProtectionKeys_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: ExerciseChallenges; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ExerciseChallenges" (
    "Id" integer NOT NULL,
    "Credit" boolean NOT NULL,
    "Difficulty" smallint NOT NULL,
    "Tags" text,
    "Title" text NOT NULL,
    "Content" text NOT NULL,
    "Tag" smallint NOT NULL,
    "Type" smallint NOT NULL,
    "Hints" text,
    "IsEnabled" boolean NOT NULL,
    "AcceptedCount" integer NOT NULL,
    "SubmissionCount" integer NOT NULL,
    "ContainerImage" text,
    "MemoryLimit" integer,
    "StorageLimit" integer,
    "CPUCount" integer,
    "ContainerExposePort" integer,
    "FileName" text,
    "ConcurrencyStamp" uuid NOT NULL,
    "FlagTemplate" text,
    "AttachmentId" integer,
    "TestContainerId" uuid
);


ALTER TABLE public."ExerciseChallenges" OWNER TO postgres;

--
-- Name: ExerciseChallenges_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."ExerciseChallenges" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."ExerciseChallenges_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: ExerciseDependencies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ExerciseDependencies" (
    "SourceId" integer NOT NULL,
    "TargetId" integer NOT NULL
);


ALTER TABLE public."ExerciseDependencies" OWNER TO postgres;

--
-- Name: ExerciseInstances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ExerciseInstances" (
    "UserId" uuid NOT NULL,
    "ExerciseId" integer NOT NULL,
    "SolveTimeUtc" timestamp with time zone NOT NULL,
    "IsSolved" boolean NOT NULL,
    "IsLoaded" boolean NOT NULL,
    "LastContainerOperation" timestamp with time zone NOT NULL,
    "FlagId" integer,
    "ContainerId" uuid
);


ALTER TABLE public."ExerciseInstances" OWNER TO postgres;

--
-- Name: Files; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Files" (
    "Id" integer NOT NULL,
    "Hash" character varying(64) NOT NULL,
    "UploadTimeUtc" timestamp with time zone NOT NULL,
    "FileSize" bigint NOT NULL,
    "Name" text NOT NULL,
    "ReferenceCount" bigint NOT NULL
);


ALTER TABLE public."Files" OWNER TO postgres;

--
-- Name: Files_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Files" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Files_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: FlagContexts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."FlagContexts" (
    "Id" integer NOT NULL,
    "Flag" text NOT NULL,
    "IsOccupied" boolean NOT NULL,
    "AttachmentId" integer,
    "ChallengeId" integer,
    "ExerciseId" integer
);


ALTER TABLE public."FlagContexts" OWNER TO postgres;

--
-- Name: FlagContexts_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."FlagContexts" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."FlagContexts_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


ALTER TABLE public."GameChallenges" OWNER TO postgres;

--
-- Name: GameChallenges_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."GameChallenges" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."GameChallenges_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: GameEvents; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."GameEvents" (
    "Id" integer NOT NULL,
    "Type" smallint NOT NULL,
    "Values" text NOT NULL,
    "PublishTimeUtc" timestamp with time zone NOT NULL,
    "UserId" uuid,
    "TeamId" integer NOT NULL,
    "GameId" integer NOT NULL
);


ALTER TABLE public."GameEvents" OWNER TO postgres;

--
-- Name: GameEvents_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."GameEvents" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."GameEvents_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: GameInstances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."GameInstances" (
    "ChallengeId" integer NOT NULL,
    "ParticipationId" integer NOT NULL,
    "IsSolved" boolean NOT NULL,
    "IsLoaded" boolean NOT NULL,
    "LastContainerOperation" timestamp with time zone NOT NULL,
    "FlagId" integer,
    "ContainerId" uuid
);


ALTER TABLE public."GameInstances" OWNER TO postgres;

--
-- Name: GameNotices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."GameNotices" (
    "Id" integer NOT NULL,
    "Type" smallint NOT NULL,
    "Values" text NOT NULL,
    "PublishTimeUtc" timestamp with time zone NOT NULL,
    "GameId" integer NOT NULL
);


ALTER TABLE public."GameNotices" OWNER TO postgres;

--
-- Name: GameNotices_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."GameNotices" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."GameNotices_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Games; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Games" (
    "Id" integer NOT NULL,
    "Title" text NOT NULL,
    "PublicKey" character varying(63) NOT NULL,
    "PrivateKey" character varying(63) NOT NULL,
    "Hidden" boolean NOT NULL,
    "PosterHash" character varying(64),
    "Summary" text NOT NULL,
    "Content" text NOT NULL,
    "AcceptWithoutReview" boolean NOT NULL,
    "WriteupRequired" boolean NOT NULL,
    "InviteCode" text,
    "Organizations" text,
    "TeamMemberCountLimit" integer NOT NULL,
    "ContainerCountLimit" integer NOT NULL,
    "StartTimeUtc" timestamp with time zone NOT NULL,
    "EndTimeUtc" timestamp with time zone NOT NULL,
    "WriteupDeadline" timestamp with time zone NOT NULL,
    "WriteupNote" text NOT NULL,
    "BloodBonus" bigint NOT NULL,
    "PracticeMode" boolean NOT NULL
);


ALTER TABLE public."Games" OWNER TO postgres;

--
-- Name: Games_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Games" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Games_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Logs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Logs" (
    "Id" integer NOT NULL,
    "TimeUtc" timestamp with time zone NOT NULL,
    "Level" character varying(50) NOT NULL,
    "Logger" character varying(250) NOT NULL,
    "RemoteIP" character varying(40),
    "UserName" character varying(25),
    "Message" text NOT NULL,
    "Status" character varying(20),
    "Exception" text
);


ALTER TABLE public."Logs" OWNER TO postgres;

--
-- Name: Logs_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Logs" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Logs_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Participations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Participations" (
    "Id" integer NOT NULL,
    "Status" integer NOT NULL,
    "Token" text NOT NULL,
    "Organization" text,
    "WriteupId" integer,
    "GameId" integer NOT NULL,
    "TeamId" integer NOT NULL
);


ALTER TABLE public."Participations" OWNER TO postgres;

--
-- Name: Participations_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Participations" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Participations_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Posts" (
    "Id" character varying(8) NOT NULL,
    "Title" text NOT NULL,
    "Summary" text NOT NULL,
    "Content" text NOT NULL,
    "IsPinned" boolean NOT NULL,
    "Tags" text,
    "AuthorId" uuid,
    "UpdateTimeUtc" timestamp with time zone NOT NULL
);


ALTER TABLE public."Posts" OWNER TO postgres;

--
-- Name: Submissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Submissions" (
    "Id" integer NOT NULL,
    "Answer" character varying(127) NOT NULL,
    "Status" text NOT NULL,
    "SubmitTimeUtc" timestamp with time zone NOT NULL,
    "UserId" uuid,
    "TeamId" integer NOT NULL,
    "ParticipationId" integer NOT NULL,
    "GameId" integer NOT NULL,
    "ChallengeId" integer NOT NULL
);


ALTER TABLE public."Submissions" OWNER TO postgres;

--
-- Name: Submissions_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Submissions" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Submissions_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: TeamUserInfo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."TeamUserInfo" (
    "MembersId" uuid NOT NULL,
    "TeamsId" integer NOT NULL
);


ALTER TABLE public."TeamUserInfo" OWNER TO postgres;

--
-- Name: Teams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Teams" (
    "Id" integer NOT NULL,
    "Name" character varying(16) NOT NULL,
    "Bio" character varying(32),
    "AvatarHash" character varying(64),
    "Locked" boolean NOT NULL,
    "InviteToken" character varying(32) NOT NULL,
    "CaptainId" uuid NOT NULL
);


ALTER TABLE public."Teams" OWNER TO postgres;

--
-- Name: Teams_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Teams" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Teams_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: UserParticipations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserParticipations" (
    "UserId" uuid NOT NULL,
    "TeamId" integer NOT NULL,
    "GameId" integer NOT NULL,
    "ParticipationId" integer NOT NULL
);


ALTER TABLE public."UserParticipations" OWNER TO postgres;

--
-- Name: __EFMigrationsHistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);


ALTER TABLE public."__EFMigrationsHistory" OWNER TO postgres;

--
-- Name: AspNetRoleClaims PK_AspNetRoleClaims; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AspNetRoleClaims"
    ADD CONSTRAINT "PK_AspNetRoleClaims" PRIMARY KEY ("Id");


--
-- Name: AspNetRoles PK_AspNetRoles; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AspNetRoles"
    ADD CONSTRAINT "PK_AspNetRoles" PRIMARY KEY ("Id");


--
-- Name: AspNetUserClaims PK_AspNetUserClaims; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AspNetUserClaims"
    ADD CONSTRAINT "PK_AspNetUserClaims" PRIMARY KEY ("Id");


--
-- Name: AspNetUserLogins PK_AspNetUserLogins; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AspNetUserLogins"
    ADD CONSTRAINT "PK_AspNetUserLogins" PRIMARY KEY ("LoginProvider", "ProviderKey");


--
-- Name: AspNetUserRoles PK_AspNetUserRoles; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "PK_AspNetUserRoles" PRIMARY KEY ("UserId", "RoleId");


--
-- Name: AspNetUserTokens PK_AspNetUserTokens; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AspNetUserTokens"
    ADD CONSTRAINT "PK_AspNetUserTokens" PRIMARY KEY ("UserId", "LoginProvider", "Name");


--
-- Name: AspNetUsers PK_AspNetUsers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AspNetUsers"
    ADD CONSTRAINT "PK_AspNetUsers" PRIMARY KEY ("Id");


--
-- Name: Attachments PK_Attachments; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Attachments"
    ADD CONSTRAINT "PK_Attachments" PRIMARY KEY ("Id");


--
-- Name: CheatInfo PK_CheatInfo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CheatInfo"
    ADD CONSTRAINT "PK_CheatInfo" PRIMARY KEY ("SubmissionId");


--
-- Name: Configs PK_Configs; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Configs"
    ADD CONSTRAINT "PK_Configs" PRIMARY KEY ("ConfigKey");


--
-- Name: Containers PK_Containers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Containers"
    ADD CONSTRAINT "PK_Containers" PRIMARY KEY ("Id");


--
-- Name: DataProtectionKeys PK_DataProtectionKeys; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataProtectionKeys"
    ADD CONSTRAINT "PK_DataProtectionKeys" PRIMARY KEY ("Id");


--
-- Name: ExerciseChallenges PK_ExerciseChallenges; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExerciseChallenges"
    ADD CONSTRAINT "PK_ExerciseChallenges" PRIMARY KEY ("Id");


--
-- Name: ExerciseDependencies PK_ExerciseDependencies; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExerciseDependencies"
    ADD CONSTRAINT "PK_ExerciseDependencies" PRIMARY KEY ("SourceId", "TargetId");


--
-- Name: ExerciseInstances PK_ExerciseInstances; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExerciseInstances"
    ADD CONSTRAINT "PK_ExerciseInstances" PRIMARY KEY ("UserId", "ExerciseId");


--
-- Name: Files PK_Files; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Files"
    ADD CONSTRAINT "PK_Files" PRIMARY KEY ("Id");


--
-- Name: FlagContexts PK_FlagContexts; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FlagContexts"
    ADD CONSTRAINT "PK_FlagContexts" PRIMARY KEY ("Id");


--
-- Name: GameChallenges PK_GameChallenges; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GameChallenges"
    ADD CONSTRAINT "PK_GameChallenges" PRIMARY KEY ("Id");


--
-- Name: GameEvents PK_GameEvents; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GameEvents"
    ADD CONSTRAINT "PK_GameEvents" PRIMARY KEY ("Id");


--
-- Name: GameInstances PK_GameInstances; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GameInstances"
    ADD CONSTRAINT "PK_GameInstances" PRIMARY KEY ("ChallengeId", "ParticipationId");


--
-- Name: GameNotices PK_GameNotices; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GameNotices"
    ADD CONSTRAINT "PK_GameNotices" PRIMARY KEY ("Id");


--
-- Name: Games PK_Games; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Games"
    ADD CONSTRAINT "PK_Games" PRIMARY KEY ("Id");


--
-- Name: Logs PK_Logs; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Logs"
    ADD CONSTRAINT "PK_Logs" PRIMARY KEY ("Id");


--
-- Name: Participations PK_Participations; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Participations"
    ADD CONSTRAINT "PK_Participations" PRIMARY KEY ("Id");


--
-- Name: Posts PK_Posts; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Posts"
    ADD CONSTRAINT "PK_Posts" PRIMARY KEY ("Id");


--
-- Name: Submissions PK_Submissions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Submissions"
    ADD CONSTRAINT "PK_Submissions" PRIMARY KEY ("Id");


--
-- Name: TeamUserInfo PK_TeamUserInfo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TeamUserInfo"
    ADD CONSTRAINT "PK_TeamUserInfo" PRIMARY KEY ("MembersId", "TeamsId");


--
-- Name: Teams PK_Teams; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Teams"
    ADD CONSTRAINT "PK_Teams" PRIMARY KEY ("Id");


--
-- Name: UserParticipations PK_UserParticipations; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserParticipations"
    ADD CONSTRAINT "PK_UserParticipations" PRIMARY KEY ("GameId", "TeamId", "UserId");


--
-- Name: __EFMigrationsHistory PK___EFMigrationsHistory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");


--
-- Name: EmailIndex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "EmailIndex" ON public."AspNetUsers" USING btree ("NormalizedEmail");


--
-- Name: IX_AspNetRoleClaims_RoleId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_AspNetRoleClaims_RoleId" ON public."AspNetRoleClaims" USING btree ("RoleId");


--
-- Name: IX_AspNetUserClaims_UserId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_AspNetUserClaims_UserId" ON public."AspNetUserClaims" USING btree ("UserId");


--
-- Name: IX_AspNetUserLogins_UserId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_AspNetUserLogins_UserId" ON public."AspNetUserLogins" USING btree ("UserId");


--
-- Name: IX_AspNetUserRoles_RoleId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_AspNetUserRoles_RoleId" ON public."AspNetUserRoles" USING btree ("RoleId");


--
-- Name: IX_Attachments_LocalFileId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Attachments_LocalFileId" ON public."Attachments" USING btree ("LocalFileId");


--
-- Name: IX_CheatInfo_GameId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_CheatInfo_GameId" ON public."CheatInfo" USING btree ("GameId");


--
-- Name: IX_CheatInfo_SourceTeamId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_CheatInfo_SourceTeamId" ON public."CheatInfo" USING btree ("SourceTeamId");


--
-- Name: IX_CheatInfo_SubmissionId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "IX_CheatInfo_SubmissionId" ON public."CheatInfo" USING btree ("SubmissionId");


--
-- Name: IX_CheatInfo_SubmitTeamId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_CheatInfo_SubmitTeamId" ON public."CheatInfo" USING btree ("SubmitTeamId");


--
-- Name: IX_Containers_ExerciseInstanceId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "IX_Containers_ExerciseInstanceId" ON public."Containers" USING btree ("ExerciseInstanceId");


--
-- Name: IX_Containers_GameInstanceId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "IX_Containers_GameInstanceId" ON public."Containers" USING btree ("GameInstanceId");


--
-- Name: IX_ExerciseChallenges_AttachmentId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_ExerciseChallenges_AttachmentId" ON public."ExerciseChallenges" USING btree ("AttachmentId");


--
-- Name: IX_ExerciseChallenges_TestContainerId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_ExerciseChallenges_TestContainerId" ON public."ExerciseChallenges" USING btree ("TestContainerId");


--
-- Name: IX_ExerciseDependencies_SourceId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_ExerciseDependencies_SourceId" ON public."ExerciseDependencies" USING btree ("SourceId");


--
-- Name: IX_ExerciseDependencies_TargetId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_ExerciseDependencies_TargetId" ON public."ExerciseDependencies" USING btree ("TargetId");


--
-- Name: IX_ExerciseInstances_ContainerId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "IX_ExerciseInstances_ContainerId" ON public."ExerciseInstances" USING btree ("ContainerId");


--
-- Name: IX_ExerciseInstances_ExerciseId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_ExerciseInstances_ExerciseId" ON public."ExerciseInstances" USING btree ("ExerciseId");


--
-- Name: IX_ExerciseInstances_FlagId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_ExerciseInstances_FlagId" ON public."ExerciseInstances" USING btree ("FlagId");


--
-- Name: IX_ExerciseInstances_UserId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_ExerciseInstances_UserId" ON public."ExerciseInstances" USING btree ("UserId");


--
-- Name: IX_Files_Hash; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Files_Hash" ON public."Files" USING btree ("Hash");


--
-- Name: IX_FlagContexts_AttachmentId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_FlagContexts_AttachmentId" ON public."FlagContexts" USING btree ("AttachmentId");


--
-- Name: IX_FlagContexts_ChallengeId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_FlagContexts_ChallengeId" ON public."FlagContexts" USING btree ("ChallengeId");


--
-- Name: IX_FlagContexts_ExerciseId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_FlagContexts_ExerciseId" ON public."FlagContexts" USING btree ("ExerciseId");


--
-- Name: IX_GameChallenges_AttachmentId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_GameChallenges_AttachmentId" ON public."GameChallenges" USING btree ("AttachmentId");


--
-- Name: IX_GameChallenges_GameId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_GameChallenges_GameId" ON public."GameChallenges" USING btree ("GameId");


--
-- Name: IX_GameChallenges_TestContainerId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_GameChallenges_TestContainerId" ON public."GameChallenges" USING btree ("TestContainerId");


--
-- Name: IX_GameEvents_GameId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_GameEvents_GameId" ON public."GameEvents" USING btree ("GameId");


--
-- Name: IX_GameEvents_TeamId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_GameEvents_TeamId" ON public."GameEvents" USING btree ("TeamId");


--
-- Name: IX_GameEvents_UserId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_GameEvents_UserId" ON public."GameEvents" USING btree ("UserId");


--
-- Name: IX_GameInstances_ContainerId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "IX_GameInstances_ContainerId" ON public."GameInstances" USING btree ("ContainerId");


--
-- Name: IX_GameInstances_FlagId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_GameInstances_FlagId" ON public."GameInstances" USING btree ("FlagId");


--
-- Name: IX_GameInstances_ParticipationId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_GameInstances_ParticipationId" ON public."GameInstances" USING btree ("ParticipationId");


--
-- Name: IX_GameNotices_GameId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_GameNotices_GameId" ON public."GameNotices" USING btree ("GameId");


--
-- Name: IX_Participations_GameId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Participations_GameId" ON public."Participations" USING btree ("GameId");


--
-- Name: IX_Participations_TeamId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Participations_TeamId" ON public."Participations" USING btree ("TeamId");


--
-- Name: IX_Participations_TeamId_GameId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Participations_TeamId_GameId" ON public."Participations" USING btree ("TeamId", "GameId");


--
-- Name: IX_Participations_WriteupId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Participations_WriteupId" ON public."Participations" USING btree ("WriteupId");


--
-- Name: IX_Posts_AuthorId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Posts_AuthorId" ON public."Posts" USING btree ("AuthorId");


--
-- Name: IX_Submissions_ChallengeId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Submissions_ChallengeId" ON public."Submissions" USING btree ("ChallengeId");


--
-- Name: IX_Submissions_GameId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Submissions_GameId" ON public."Submissions" USING btree ("GameId");


--
-- Name: IX_Submissions_ParticipationId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Submissions_ParticipationId" ON public."Submissions" USING btree ("ParticipationId");


--
-- Name: IX_Submissions_TeamId_ChallengeId_GameId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Submissions_TeamId_ChallengeId_GameId" ON public."Submissions" USING btree ("TeamId", "ChallengeId", "GameId");


--
-- Name: IX_Submissions_UserId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Submissions_UserId" ON public."Submissions" USING btree ("UserId");


--
-- Name: IX_TeamUserInfo_TeamsId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_TeamUserInfo_TeamsId" ON public."TeamUserInfo" USING btree ("TeamsId");


--
-- Name: IX_Teams_CaptainId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Teams_CaptainId" ON public."Teams" USING btree ("CaptainId");


--
-- Name: IX_UserParticipations_ParticipationId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_UserParticipations_ParticipationId" ON public."UserParticipations" USING btree ("ParticipationId");


--
-- Name: IX_UserParticipations_TeamId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_UserParticipations_TeamId" ON public."UserParticipations" USING btree ("TeamId");


--
-- Name: IX_UserParticipations_UserId_GameId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "IX_UserParticipations_UserId_GameId" ON public."UserParticipations" USING btree ("UserId", "GameId");


--
-- Name: RoleNameIndex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "RoleNameIndex" ON public."AspNetRoles" USING btree ("NormalizedName");


--
-- Name: UserNameIndex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "UserNameIndex" ON public."AspNetUsers" USING btree ("NormalizedUserName");


--
-- Name: AspNetRoleClaims FK_AspNetRoleClaims_AspNetRoles_RoleId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AspNetRoleClaims"
    ADD CONSTRAINT "FK_AspNetRoleClaims_AspNetRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES public."AspNetRoles"("Id") ON DELETE CASCADE;


--
-- Name: AspNetUserClaims FK_AspNetUserClaims_AspNetUsers_UserId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AspNetUserClaims"
    ADD CONSTRAINT "FK_AspNetUserClaims_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;


--
-- Name: AspNetUserLogins FK_AspNetUserLogins_AspNetUsers_UserId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AspNetUserLogins"
    ADD CONSTRAINT "FK_AspNetUserLogins_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;


--
-- Name: AspNetUserRoles FK_AspNetUserRoles_AspNetRoles_RoleId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "FK_AspNetUserRoles_AspNetRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES public."AspNetRoles"("Id") ON DELETE CASCADE;


--
-- Name: AspNetUserRoles FK_AspNetUserRoles_AspNetUsers_UserId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "FK_AspNetUserRoles_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;


--
-- Name: AspNetUserTokens FK_AspNetUserTokens_AspNetUsers_UserId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AspNetUserTokens"
    ADD CONSTRAINT "FK_AspNetUserTokens_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;


--
-- Name: Attachments FK_Attachments_Files_LocalFileId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Attachments"
    ADD CONSTRAINT "FK_Attachments_Files_LocalFileId" FOREIGN KEY ("LocalFileId") REFERENCES public."Files"("Id") ON DELETE SET NULL;


--
-- Name: CheatInfo FK_CheatInfo_Games_GameId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CheatInfo"
    ADD CONSTRAINT "FK_CheatInfo_Games_GameId" FOREIGN KEY ("GameId") REFERENCES public."Games"("Id") ON DELETE CASCADE;


--
-- Name: CheatInfo FK_CheatInfo_Participations_SourceTeamId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CheatInfo"
    ADD CONSTRAINT "FK_CheatInfo_Participations_SourceTeamId" FOREIGN KEY ("SourceTeamId") REFERENCES public."Participations"("Id") ON DELETE CASCADE;


--
-- Name: CheatInfo FK_CheatInfo_Participations_SubmitTeamId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CheatInfo"
    ADD CONSTRAINT "FK_CheatInfo_Participations_SubmitTeamId" FOREIGN KEY ("SubmitTeamId") REFERENCES public."Participations"("Id") ON DELETE CASCADE;


--
-- Name: CheatInfo FK_CheatInfo_Submissions_SubmissionId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CheatInfo"
    ADD CONSTRAINT "FK_CheatInfo_Submissions_SubmissionId" FOREIGN KEY ("SubmissionId") REFERENCES public."Submissions"("Id") ON DELETE CASCADE;


--
-- Name: ExerciseChallenges FK_ExerciseChallenges_Attachments_AttachmentId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExerciseChallenges"
    ADD CONSTRAINT "FK_ExerciseChallenges_Attachments_AttachmentId" FOREIGN KEY ("AttachmentId") REFERENCES public."Attachments"("Id") ON DELETE SET NULL;


--
-- Name: ExerciseChallenges FK_ExerciseChallenges_Containers_TestContainerId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExerciseChallenges"
    ADD CONSTRAINT "FK_ExerciseChallenges_Containers_TestContainerId" FOREIGN KEY ("TestContainerId") REFERENCES public."Containers"("Id") ON DELETE SET NULL;


--
-- Name: ExerciseDependencies FK_ExerciseDependencies_ExerciseChallenges_SourceId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExerciseDependencies"
    ADD CONSTRAINT "FK_ExerciseDependencies_ExerciseChallenges_SourceId" FOREIGN KEY ("SourceId") REFERENCES public."ExerciseChallenges"("Id") ON DELETE CASCADE;


--
-- Name: ExerciseDependencies FK_ExerciseDependencies_ExerciseChallenges_TargetId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExerciseDependencies"
    ADD CONSTRAINT "FK_ExerciseDependencies_ExerciseChallenges_TargetId" FOREIGN KEY ("TargetId") REFERENCES public."ExerciseChallenges"("Id") ON DELETE CASCADE;


--
-- Name: ExerciseInstances FK_ExerciseInstances_AspNetUsers_UserId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExerciseInstances"
    ADD CONSTRAINT "FK_ExerciseInstances_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;


--
-- Name: ExerciseInstances FK_ExerciseInstances_Containers_ContainerId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExerciseInstances"
    ADD CONSTRAINT "FK_ExerciseInstances_Containers_ContainerId" FOREIGN KEY ("ContainerId") REFERENCES public."Containers"("Id") ON DELETE SET NULL;


--
-- Name: ExerciseInstances FK_ExerciseInstances_ExerciseChallenges_ExerciseId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExerciseInstances"
    ADD CONSTRAINT "FK_ExerciseInstances_ExerciseChallenges_ExerciseId" FOREIGN KEY ("ExerciseId") REFERENCES public."ExerciseChallenges"("Id") ON DELETE CASCADE;


--
-- Name: ExerciseInstances FK_ExerciseInstances_FlagContexts_FlagId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExerciseInstances"
    ADD CONSTRAINT "FK_ExerciseInstances_FlagContexts_FlagId" FOREIGN KEY ("FlagId") REFERENCES public."FlagContexts"("Id") ON DELETE SET NULL;


--
-- Name: FlagContexts FK_FlagContexts_Attachments_AttachmentId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FlagContexts"
    ADD CONSTRAINT "FK_FlagContexts_Attachments_AttachmentId" FOREIGN KEY ("AttachmentId") REFERENCES public."Attachments"("Id") ON DELETE SET NULL;


--
-- Name: FlagContexts FK_FlagContexts_ExerciseChallenges_ExerciseId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FlagContexts"
    ADD CONSTRAINT "FK_FlagContexts_ExerciseChallenges_ExerciseId" FOREIGN KEY ("ExerciseId") REFERENCES public."ExerciseChallenges"("Id");


--
-- Name: FlagContexts FK_FlagContexts_GameChallenges_ChallengeId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FlagContexts"
    ADD CONSTRAINT "FK_FlagContexts_GameChallenges_ChallengeId" FOREIGN KEY ("ChallengeId") REFERENCES public."GameChallenges"("Id");


--
-- Name: GameChallenges FK_GameChallenges_Attachments_AttachmentId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GameChallenges"
    ADD CONSTRAINT "FK_GameChallenges_Attachments_AttachmentId" FOREIGN KEY ("AttachmentId") REFERENCES public."Attachments"("Id") ON DELETE SET NULL;


--
-- Name: GameChallenges FK_GameChallenges_Containers_TestContainerId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GameChallenges"
    ADD CONSTRAINT "FK_GameChallenges_Containers_TestContainerId" FOREIGN KEY ("TestContainerId") REFERENCES public."Containers"("Id") ON DELETE SET NULL;


--
-- Name: GameChallenges FK_GameChallenges_Games_GameId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GameChallenges"
    ADD CONSTRAINT "FK_GameChallenges_Games_GameId" FOREIGN KEY ("GameId") REFERENCES public."Games"("Id") ON DELETE CASCADE;


--
-- Name: GameEvents FK_GameEvents_AspNetUsers_UserId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GameEvents"
    ADD CONSTRAINT "FK_GameEvents_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id");


--
-- Name: GameEvents FK_GameEvents_Games_GameId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GameEvents"
    ADD CONSTRAINT "FK_GameEvents_Games_GameId" FOREIGN KEY ("GameId") REFERENCES public."Games"("Id") ON DELETE CASCADE;


--
-- Name: GameEvents FK_GameEvents_Teams_TeamId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GameEvents"
    ADD CONSTRAINT "FK_GameEvents_Teams_TeamId" FOREIGN KEY ("TeamId") REFERENCES public."Teams"("Id") ON DELETE CASCADE;


--
-- Name: GameInstances FK_GameInstances_Containers_ContainerId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GameInstances"
    ADD CONSTRAINT "FK_GameInstances_Containers_ContainerId" FOREIGN KEY ("ContainerId") REFERENCES public."Containers"("Id") ON DELETE SET NULL;


--
-- Name: GameInstances FK_GameInstances_FlagContexts_FlagId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GameInstances"
    ADD CONSTRAINT "FK_GameInstances_FlagContexts_FlagId" FOREIGN KEY ("FlagId") REFERENCES public."FlagContexts"("Id") ON DELETE SET NULL;


--
-- Name: GameInstances FK_GameInstances_GameChallenges_ChallengeId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GameInstances"
    ADD CONSTRAINT "FK_GameInstances_GameChallenges_ChallengeId" FOREIGN KEY ("ChallengeId") REFERENCES public."GameChallenges"("Id") ON DELETE CASCADE;


--
-- Name: GameInstances FK_GameInstances_Participations_ParticipationId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GameInstances"
    ADD CONSTRAINT "FK_GameInstances_Participations_ParticipationId" FOREIGN KEY ("ParticipationId") REFERENCES public."Participations"("Id") ON DELETE CASCADE;


--
-- Name: GameNotices FK_GameNotices_Games_GameId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GameNotices"
    ADD CONSTRAINT "FK_GameNotices_Games_GameId" FOREIGN KEY ("GameId") REFERENCES public."Games"("Id") ON DELETE CASCADE;


--
-- Name: Participations FK_Participations_Files_WriteupId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Participations"
    ADD CONSTRAINT "FK_Participations_Files_WriteupId" FOREIGN KEY ("WriteupId") REFERENCES public."Files"("Id");


--
-- Name: Participations FK_Participations_Games_GameId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Participations"
    ADD CONSTRAINT "FK_Participations_Games_GameId" FOREIGN KEY ("GameId") REFERENCES public."Games"("Id") ON DELETE CASCADE;


--
-- Name: Participations FK_Participations_Teams_TeamId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Participations"
    ADD CONSTRAINT "FK_Participations_Teams_TeamId" FOREIGN KEY ("TeamId") REFERENCES public."Teams"("Id") ON DELETE CASCADE;


--
-- Name: Posts FK_Posts_AspNetUsers_AuthorId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Posts"
    ADD CONSTRAINT "FK_Posts_AspNetUsers_AuthorId" FOREIGN KEY ("AuthorId") REFERENCES public."AspNetUsers"("Id") ON DELETE SET NULL;


--
-- Name: Submissions FK_Submissions_AspNetUsers_UserId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Submissions"
    ADD CONSTRAINT "FK_Submissions_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE SET NULL;


--
-- Name: Submissions FK_Submissions_GameChallenges_ChallengeId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Submissions"
    ADD CONSTRAINT "FK_Submissions_GameChallenges_ChallengeId" FOREIGN KEY ("ChallengeId") REFERENCES public."GameChallenges"("Id") ON DELETE CASCADE;


--
-- Name: Submissions FK_Submissions_Games_GameId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Submissions"
    ADD CONSTRAINT "FK_Submissions_Games_GameId" FOREIGN KEY ("GameId") REFERENCES public."Games"("Id") ON DELETE CASCADE;


--
-- Name: Submissions FK_Submissions_Participations_ParticipationId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Submissions"
    ADD CONSTRAINT "FK_Submissions_Participations_ParticipationId" FOREIGN KEY ("ParticipationId") REFERENCES public."Participations"("Id") ON DELETE CASCADE;


--
-- Name: Submissions FK_Submissions_Teams_TeamId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Submissions"
    ADD CONSTRAINT "FK_Submissions_Teams_TeamId" FOREIGN KEY ("TeamId") REFERENCES public."Teams"("Id") ON DELETE CASCADE;


--
-- Name: TeamUserInfo FK_TeamUserInfo_AspNetUsers_MembersId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TeamUserInfo"
    ADD CONSTRAINT "FK_TeamUserInfo_AspNetUsers_MembersId" FOREIGN KEY ("MembersId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;


--
-- Name: TeamUserInfo FK_TeamUserInfo_Teams_TeamsId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TeamUserInfo"
    ADD CONSTRAINT "FK_TeamUserInfo_Teams_TeamsId" FOREIGN KEY ("TeamsId") REFERENCES public."Teams"("Id") ON DELETE CASCADE;


--
-- Name: Teams FK_Teams_AspNetUsers_CaptainId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Teams"
    ADD CONSTRAINT "FK_Teams_AspNetUsers_CaptainId" FOREIGN KEY ("CaptainId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;


--
-- Name: UserParticipations FK_UserParticipations_AspNetUsers_UserId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserParticipations"
    ADD CONSTRAINT "FK_UserParticipations_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;


--
-- Name: UserParticipations FK_UserParticipations_Games_GameId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserParticipations"
    ADD CONSTRAINT "FK_UserParticipations_Games_GameId" FOREIGN KEY ("GameId") REFERENCES public."Games"("Id") ON DELETE CASCADE;


--
-- Name: UserParticipations FK_UserParticipations_Participations_ParticipationId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserParticipations"
    ADD CONSTRAINT "FK_UserParticipations_Participations_ParticipationId" FOREIGN KEY ("ParticipationId") REFERENCES public."Participations"("Id") ON DELETE CASCADE;


--
-- Name: UserParticipations FK_UserParticipations_Teams_TeamId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserParticipations"
    ADD CONSTRAINT "FK_UserParticipations_Teams_TeamId" FOREIGN KEY ("TeamId") REFERENCES public."Teams"("Id") ON DELETE CASCADE;

-- step 3: migrate data
INSERT INTO "AspNetRoleClaims" ("Id", "RoleId", "ClaimType", "ClaimValue")
SELECT "Id", "RoleId"::uuid, "ClaimType", "ClaimValue"
FROM "OldAspNetRoleClaims";
INSERT INTO "AspNetRoles" ("Id", "Name", "NormalizedName", "ConcurrencyStamp")
SELECT "Id"::uuid, "Name", "NormalizedName", "ConcurrencyStamp"
FROM "OldAspNetRoles";
INSERT INTO "AspNetUserClaims" ("Id", "UserId", "ClaimType", "ClaimValue")
SELECT "Id", "UserId"::uuid, "ClaimType", "ClaimValue"
FROM "OldAspNetUserClaims";
INSERT INTO "AspNetUserLogins" ("LoginProvider", "ProviderKey", "ProviderDisplayName", "UserId")
SELECT "LoginProvider", "ProviderKey", "ProviderDisplayName", "UserId"::uuid
FROM "OldAspNetUserLogins";
INSERT INTO "AspNetUserRoles" ("UserId", "RoleId")
SELECT "UserId"::uuid, "RoleId"::uuid
FROM "OldAspNetUserRoles";
INSERT INTO "AspNetUserTokens" ("UserId", "LoginProvider", "Name", "Value")
SELECT "UserId"::uuid, "LoginProvider", "Name", "Value"
FROM "OldAspNetUserTokens";
INSERT INTO "AspNetUsers" ("Id", "Role", "IP", "LastSignedInUtc", "LastVisitedUtc", "RegisterTimeUtc", "Bio", "RealName", "StdNumber", "AvatarHash", "UserName", "NormalizedUserName", "Email", "NormalizedEmail", "EmailConfirmed", "PasswordHash", "SecurityStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEnd", "LockoutEnabled", "AccessFailedCount")
SELECT "Id"::uuid, "Role", "IP", "LastSignedInUTC", "LastVisitedUTC", "RegisterTimeUTC", "Bio", "RealName", "StdNumber", "AvatarHash", "UserName", "NormalizedUserName", "Email", "NormalizedEmail", "EmailConfirmed", "PasswordHash", "SecurityStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEnd", "LockoutEnabled", "AccessFailedCount"
FROM "OldAspNetUsers";
INSERT INTO "Files" ("Id", "Hash", "UploadTimeUtc", "FileSize", "Name", "ReferenceCount")
SELECT "Id", "Hash", "UploadTimeUTC", "FileSize", "Name", "ReferenceCount"
FROM "OldFiles";
INSERT INTO "Attachments"
SELECT *
FROM "OldAttachments";
INSERT INTO "Containers" ("Id", "Image", "ContainerId", "Status", "StartedAt", "ExpectStopAt", "IsProxy", "IP", "Port", "PublicIP", "GameInstanceId", "ExerciseInstanceId")
SELECT "Id"::uuid, "Image", "ContainerId", "Status", "StartedAt", "ExpectStopAt", "IsProxy", "IP", "Port", "PublicIP", NULL AS "InstanceId", NULL AS "ExerciseInstanceId"
FROM "OldContainers";
INSERT INTO "Games" ("Id", "Title", "PublicKey", "PrivateKey", "Hidden", "PosterHash", "Summary", "Content", "AcceptWithoutReview", "WriteupRequired", "InviteCode", "Organizations", "TeamMemberCountLimit", "ContainerCountLimit", "StartTimeUtc", "EndTimeUtc", "WriteupDeadline", "WriteupNote", "BloodBonus", "PracticeMode")
SELECT "Id", "Title", "PublicKey", "PrivateKey", "Hidden", "PosterHash", "Summary", "Content", "AcceptWithoutReview", FALSE AS "WriteupRequired", "InviteCode", "Organizations", "TeamMemberCountLimit", "ContainerCountLimit", "StartTimeUTC", "EndTimeUTC", "WriteupDeadline", "WriteupNote", "BloodBonus", "PracticeMode"
FROM "OldGames";
INSERT INTO "GameChallenges" ("Id", "EnableTrafficCapture", "OriginalScore", "MinScoreRate", "Difficulty", "GameId", "Title", "Content", "Tag", "Type", "Hints", "IsEnabled", "AcceptedCount", "SubmissionCount", "ContainerImage", "MemoryLimit", "StorageLimit", "CPUCount", "ContainerExposePort", "FileName", "ConcurrencyStamp", "FlagTemplate", "AttachmentId", "TestContainerId")
SELECT "Id", "EnableTrafficCapture", "OriginalScore", "MinScoreRate", "Difficulty", "GameId", "Title", "Content", "Tag", "Type", "Hints", "IsEnabled", "AcceptedCount", "SubmissionCount", "ContainerImage", "MemoryLimit", "StorageLimit", "CPUCount", "ContainerExposePort", "FileName", "ConcurrencyStamp", "FlagTemplate", "AttachmentId", "TestContainerId"::uuid
FROM "OldChallenges";
INSERT INTO "Teams" ("Id", "Name", "Bio", "AvatarHash", "Locked", "InviteToken", "CaptainId")
SELECT "Id", "Name", "Bio", "AvatarHash", "Locked", "InviteToken", "CaptainId"::uuid
FROM "OldTeams";
INSERT INTO "Participations" ("Id", "Status", "Token", "Organization", "WriteupId", "GameId", "TeamId")
SELECT "Id", "Status", "Token", "Organization", "WriteupId", "GameId", "TeamId"
FROM "OldParticipations";
INSERT INTO "Submissions" ("Id", "Answer", "Status", "SubmitTimeUtc", "UserId", "TeamId", "ParticipationId", "GameId", "ChallengeId")
SELECT "Id", "Answer", "Status", "SubmitTimeUTC", "UserId"::uuid, "TeamId", "ParticipationId", "GameId", "ChallengeId"
FROM "OldSubmissions";
INSERT INTO "CheatInfo" ("SubmissionId", "GameId", "SubmitTeamId", "SourceTeamId")
SELECT "SubmissionId", "GameId", "SubmitTeamId", "SourceTeamId"
FROM "OldCheatInfo";
INSERT INTO "Configs" ("ConfigKey", "Value")
SELECT "ConfigKey", "Value"
FROM "OldConfigs";
INSERT INTO "DataProtectionKeys" ("Id", "FriendlyName", "Xml")
SELECT "Id", "FriendlyName", "Xml"
FROM "OldDataProtectionKeys";
INSERT INTO "FlagContexts" ("Id", "Flag", "IsOccupied", "AttachmentId", "ChallengeId", "ExerciseId")
SELECT "Id", "Flag", "IsOccupied", "AttachmentId", "ChallengeId", NULL AS "ExerciseId"
FROM "OldFlagContexts";
INSERT INTO "GameEvents" ("Id", "Type", "Values", "PublishTimeUtc", "UserId", "TeamId", "GameId")
SELECT "Id", "Type", (CASE 
    WHEN "Content" ~ '^.*#[0-9]+ .*容器实例$' 
    THEN to_json(regexp_match("Content", '^.*#([0-9]+) .*容器实例') || regexp_match("Content", '^(.*)#[0-9]+ .*容器实例'))
    ELSE (CASE
        WHEN "Content" ~ '^\[.*\] .*  .*#[0-9]+$' 
        THEN to_json(regexp_match("Content", '^\[(.*)\] (.*)  (.*)#([0-9]+)$'))
        ELSE to_json(ARRAY["Content"])
    END)
  END), "PublishTimeUTC", "UserId"::uuid, "TeamId", "GameId"
FROM "OldGameEvents";
INSERT INTO "GameNotices" ("Id", "Type", "Values", "PublishTimeUtc", "GameId")
SELECT "Id", "Type", (CASE 
    WHEN "Content" ~ '^恭喜\s+(.+)\s+获得\s+[⌈「]([^⌋」]+)[⌋」]\s+的.*血$' 
    THEN to_json(regexp_match("Content", '^恭喜\s+(.+)\s+获得\s+[⌈「]([^⌋」]+)[⌋」]\s+的.*血$'))
    ELSE to_json(ARRAY["Content"])
  END), "PublishTimeUTC", "GameId"
FROM "OldGameNotices";
INSERT INTO "GameInstances" ("ChallengeId", "ParticipationId", "IsSolved", "IsLoaded", "LastContainerOperation", "FlagId", "ContainerId")
SELECT "ChallengeId", "ParticipationId", "IsSolved", "IsLoaded", "LastContainerOperation", "FlagId", "ContainerId"::uuid
FROM "OldInstances";
INSERT INTO "Logs" ("Id", "TimeUtc", "Level", "Logger", "RemoteIP", "UserName", "Message", "Status", "Exception")
SELECT "Id", "TimeUTC", "Level", "Logger", "RemoteIP", "UserName", "Message", "Status", "Exception"
FROM "OldLogs";
INSERT INTO "Posts" ("Id", "Title", "Summary", "Content", "IsPinned", "Tags", "AuthorId", "UpdateTimeUtc")
SELECT "Id", "Title", "Summary", "Content", "IsPinned", "Tags", "AuthorId"::uuid, "UpdateTimeUTC"
FROM "OldPosts";
INSERT INTO "TeamUserInfo" ("MembersId", "TeamsId")
SELECT "MembersId"::uuid, "TeamsId"
FROM "OldTeamUserInfo";
INSERT INTO "UserParticipations" ("UserId", "TeamId", "GameId", "ParticipationId")
SELECT "UserId"::uuid, "TeamId", "GameId", "ParticipationId"
FROM "OldUserParticipations";
INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES ('20240202021414_Initialize', '8.0.1');
INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES ('20240208144221_FormatableData', '8.0.1');

-- step 4: fixup sequences
SELECT setval('"AspNetRoleClaims_Id_seq"', MAX("Id")) FROM "AspNetRoleClaims";
SELECT setval('"AspNetUserClaims_Id_seq"', MAX("Id")) FROM "AspNetUserClaims";
SELECT setval('"Attachments_Id_seq"', MAX("Id")) FROM "Attachments";
SELECT setval('"GameChallenges_Id_seq"', MAX("Id")) FROM "GameChallenges";
SELECT setval('"DataProtectionKeys_Id_seq"', MAX("Id")) FROM "DataProtectionKeys";
SELECT setval('"Files_Id_seq"', MAX("Id")) FROM "Files";
SELECT setval('"FlagContexts_Id_seq"', MAX("Id")) FROM "FlagContexts";
SELECT setval('"GameEvents_Id_seq"', MAX("Id")) FROM "GameEvents";
SELECT setval('"GameNotices_Id_seq"', MAX("Id")) FROM "GameNotices";
SELECT setval('"Games_Id_seq"', MAX("Id")) FROM "Games";
SELECT setval('"Logs_Id_seq"', MAX("Id")) FROM "Logs";
SELECT setval('"Participations_Id_seq"', MAX("Id")) FROM "Participations";
SELECT setval('"Submissions_Id_seq"', MAX("Id")) FROM "Submissions";
SELECT setval('"Teams_Id_seq"', MAX("Id")) FROM "Teams";

COMMIT;
