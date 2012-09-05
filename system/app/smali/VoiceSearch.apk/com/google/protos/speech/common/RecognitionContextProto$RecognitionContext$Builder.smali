.class public final Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RecognitionContextProto.java"

# interfaces
.implements Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;",
        "Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;",
        ">;",
        "Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContextOrBuilder;"
    }
.end annotation


# instance fields
.field private applicationName_:Ljava/lang/Object;

.field private bitField0_:I

.field private clientApplicationId_:Ljava/lang/Object;

.field private clientId_:Ljava/lang/Object;

.field private enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

.field private fieldId_:Ljava/lang/Object;

.field private fieldName_:Ljava/lang/Object;

.field private hardware_:Ljava/lang/Object;

.field private hasGrxmlGrammar_:Z

.field private hint_:Ljava/lang/Object;

.field private imeOptions_:I

.field private inputType_:I

.field private label_:Ljava/lang/Object;

.field private languageModel_:Ljava/lang/Object;

.field private language_:Ljava/lang/Object;

.field private referer_:Ljava/lang/Object;

.field private selectedKeyboardLanguage_:Ljava/lang/Object;

.field private singleLine_:Z

.field private userAgent_:Ljava/lang/Object;

.field private voiceSearchLanguage_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1063
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1339
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->applicationName_:Ljava/lang/Object;

    .line 1392
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldName_:Ljava/lang/Object;

    .line 1445
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldId_:Ljava/lang/Object;

    .line 1519
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->label_:Ljava/lang/Object;

    .line 1572
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hint_:Ljava/lang/Object;

    .line 1667
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->languageModel_:Ljava/lang/Object;

    .line 1720
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->language_:Ljava/lang/Object;

    .line 1773
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clientId_:Ljava/lang/Object;

    .line 1847
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->selectedKeyboardLanguage_:Ljava/lang/Object;

    .line 1900
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    .line 1965
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 2018
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->referer_:Ljava/lang/Object;

    .line 2071
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->userAgent_:Ljava/lang/Object;

    .line 2124
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hardware_:Ljava/lang/Object;

    .line 2177
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clientApplicationId_:Ljava/lang/Object;

    .line 1064
    invoke-direct {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->maybeForceBuilderInitialization()V

    .line 1065
    return-void
.end method

.method static synthetic access$100()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .registers 1

    .prologue
    .line 1058
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->create()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .registers 1

    .prologue
    .line 1070
    new-instance v0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;-><init>()V

    return-object v0
.end method

.method private ensureEnabledKeyboardLanguageIsMutable()V
    .registers 3

    .prologue
    .line 1902
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_17

    .line 1903
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    .line 1904
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1906
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1068
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->build()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;
    .registers 3

    .prologue
    .line 1125
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->buildPartial()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    .line 1126
    .local v0, result:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;
    invoke-virtual {v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1127
    invoke-static {v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1129
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->buildPartial()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;
    .registers 10

    .prologue
    const/high16 v8, 0x4

    const/high16 v7, 0x2

    const/high16 v6, 0x1

    const v5, 0x8000

    .line 1133
    new-instance v1, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/common/RecognitionContextProto$1;)V

    .line 1134
    .local v1, result:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1135
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1136
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_19

    .line 1137
    or-int/lit8 v2, v2, 0x1

    .line 1139
    :cond_19
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->applicationName_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->applicationName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$302(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_25

    .line 1141
    or-int/lit8 v2, v2, 0x2

    .line 1143
    :cond_25
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldName_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->fieldName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$402(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_31

    .line 1145
    or-int/lit8 v2, v2, 0x4

    .line 1147
    :cond_31
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->fieldId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$502(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3e

    .line 1149
    or-int/lit8 v2, v2, 0x8

    .line 1151
    :cond_3e
    iget-boolean v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->singleLine_:Z

    #setter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->singleLine_:Z
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$602(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Z)Z

    .line 1152
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4b

    .line 1153
    or-int/lit8 v2, v2, 0x10

    .line 1155
    :cond_4b
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->label_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->label_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$702(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_58

    .line 1157
    or-int/lit8 v2, v2, 0x20

    .line 1159
    :cond_58
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hint_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hint_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$802(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_65

    .line 1161
    or-int/lit8 v2, v2, 0x40

    .line 1163
    :cond_65
    iget v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->inputType_:I

    #setter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->inputType_:I
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$902(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;I)I

    .line 1164
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_72

    .line 1165
    or-int/lit16 v2, v2, 0x80

    .line 1167
    :cond_72
    iget v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->imeOptions_:I

    #setter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->imeOptions_:I
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1002(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;I)I

    .line 1168
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_7f

    .line 1169
    or-int/lit16 v2, v2, 0x100

    .line 1171
    :cond_7f
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->languageModel_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->languageModel_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1102(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_8c

    .line 1173
    or-int/lit16 v2, v2, 0x200

    .line 1175
    :cond_8c
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->language_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->language_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1202(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_99

    .line 1177
    or-int/lit16 v2, v2, 0x400

    .line 1179
    :cond_99
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clientId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->clientId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1302(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_a6

    .line 1181
    or-int/lit16 v2, v2, 0x800

    .line 1183
    :cond_a6
    iget-boolean v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hasGrxmlGrammar_:Z

    #setter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasGrxmlGrammar_:Z
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1402(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Z)Z

    .line 1184
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_b3

    .line 1185
    or-int/lit16 v2, v2, 0x1000

    .line 1187
    :cond_b3
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->selectedKeyboardLanguage_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->selectedKeyboardLanguage_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1502(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    iget v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_cf

    .line 1189
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    .line 1191
    iget v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x2001

    iput v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1193
    :cond_cf
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1602(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 1194
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_dc

    .line 1195
    or-int/lit16 v2, v2, 0x2000

    .line 1197
    :cond_dc
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->voiceSearchLanguage_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->voiceSearchLanguage_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1702(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    and-int v3, v0, v5

    if-ne v3, v5, :cond_e7

    .line 1199
    or-int/lit16 v2, v2, 0x4000

    .line 1201
    :cond_e7
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->referer_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->referer_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1802(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    and-int v3, v0, v6

    if-ne v3, v6, :cond_f1

    .line 1203
    or-int/2addr v2, v5

    .line 1205
    :cond_f1
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->userAgent_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->userAgent_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1902(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    and-int v3, v0, v7

    if-ne v3, v7, :cond_fb

    .line 1207
    or-int/2addr v2, v6

    .line 1209
    :cond_fb
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hardware_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hardware_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$2002(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    and-int v3, v0, v8

    if-ne v3, v8, :cond_105

    .line 1211
    or-int/2addr v2, v7

    .line 1213
    :cond_105
    iget-object v3, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clientApplicationId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->clientApplicationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$2102(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    #setter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$2202(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;I)I

    .line 1215
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clone()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clone()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .registers 3

    .prologue
    .line 1117
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->create()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->buildPartial()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->mergeFrom(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clone()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;
    .registers 2

    .prologue
    .line 1121
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getDefaultInstance()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 1316
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1058
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1058
    check-cast p1, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->mergeFrom(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1058
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1323
    const/4 v2, 0x0

    .line 1325
    .local v2, parsedMessage:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;
    :try_start_1
    sget-object v3, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 1330
    if-eqz v2, :cond_10

    .line 1331
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->mergeFrom(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    .line 1334
    :cond_10
    return-object p0

    .line 1326
    :catch_11
    move-exception v1

    .line 1327
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-object v2, v0

    .line 1328
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 1330
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 1331
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->mergeFrom(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    :cond_21
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 1219
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getDefaultInstance()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1312
    :cond_6
    :goto_6
    return-object p0

    .line 1220
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasApplicationName()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1221
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1222
    #getter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->applicationName_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$300(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->applicationName_:Ljava/lang/Object;

    .line 1225
    :cond_19
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasFieldName()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1226
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1227
    #getter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->fieldName_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$400(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldName_:Ljava/lang/Object;

    .line 1230
    :cond_2b
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasFieldId()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1231
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1232
    #getter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->fieldId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$500(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldId_:Ljava/lang/Object;

    .line 1235
    :cond_3d
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasSingleLine()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1236
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getSingleLine()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setSingleLine(Z)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    .line 1238
    :cond_4a
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1239
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1240
    #getter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->label_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$700(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->label_:Ljava/lang/Object;

    .line 1243
    :cond_5c
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasHint()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 1244
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1245
    #getter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hint_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$800(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hint_:Ljava/lang/Object;

    .line 1248
    :cond_6e
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasInputType()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1249
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getInputType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setInputType(I)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    .line 1251
    :cond_7b
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasImeOptions()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 1252
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getImeOptions()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setImeOptions(I)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    .line 1254
    :cond_88
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasLanguageModel()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 1255
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1256
    #getter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->languageModel_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1100(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->languageModel_:Ljava/lang/Object;

    .line 1259
    :cond_9a
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasLanguage()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 1260
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1261
    #getter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->language_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1200(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->language_:Ljava/lang/Object;

    .line 1264
    :cond_ac
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasClientId()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 1265
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1266
    #getter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->clientId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1300(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clientId_:Ljava/lang/Object;

    .line 1269
    :cond_be
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasHasGrxmlGrammar()Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 1270
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getHasGrxmlGrammar()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setHasGrxmlGrammar(Z)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    .line 1272
    :cond_cb
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasSelectedKeyboardLanguage()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 1273
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1274
    #getter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->selectedKeyboardLanguage_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1500(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->selectedKeyboardLanguage_:Ljava/lang/Object;

    .line 1277
    :cond_dd
    #getter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1600(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_fb

    .line 1278
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 1279
    #getter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1600(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    .line 1280
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1287
    :cond_fb
    :goto_fb
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasVoiceSearchLanguage()Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 1288
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1289
    #getter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->voiceSearchLanguage_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1700(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 1292
    :cond_10d
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasReferer()Z

    move-result v0

    if-eqz v0, :cond_121

    .line 1293
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1294
    #getter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->referer_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1800(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->referer_:Ljava/lang/Object;

    .line 1297
    :cond_121
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasUserAgent()Z

    move-result v0

    if-eqz v0, :cond_134

    .line 1298
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1299
    #getter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->userAgent_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1900(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->userAgent_:Ljava/lang/Object;

    .line 1302
    :cond_134
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasHardware()Z

    move-result v0

    if-eqz v0, :cond_147

    .line 1303
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1304
    #getter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hardware_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$2000(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hardware_:Ljava/lang/Object;

    .line 1307
    :cond_147
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasClientApplicationId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1308
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1309
    #getter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->clientApplicationId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$2100(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->clientApplicationId_:Ljava/lang/Object;

    goto/16 :goto_6

    .line 1282
    :cond_15c
    invoke-direct {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->ensureEnabledKeyboardLanguageIsMutable()V

    .line 1283
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->access$1600(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_fb
.end method

.method public setApplicationName(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1366
    if-nez p1, :cond_8

    .line 1367
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1369
    :cond_8
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1370
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->applicationName_:Ljava/lang/Object;

    .line 1372
    return-object p0
.end method

.method public setFieldId(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1472
    if-nez p1, :cond_8

    .line 1473
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1475
    :cond_8
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1476
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldId_:Ljava/lang/Object;

    .line 1478
    return-object p0
.end method

.method public setFieldName(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1419
    if-nez p1, :cond_8

    .line 1420
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1422
    :cond_8
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1423
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->fieldName_:Ljava/lang/Object;

    .line 1425
    return-object p0
.end method

.method public setHasGrxmlGrammar(Z)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1834
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1835
    iput-boolean p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hasGrxmlGrammar_:Z

    .line 1837
    return-object p0
.end method

.method public setHint(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1599
    if-nez p1, :cond_8

    .line 1600
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1602
    :cond_8
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1603
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->hint_:Ljava/lang/Object;

    .line 1605
    return-object p0
.end method

.method public setImeOptions(I)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1654
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1655
    iput p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->imeOptions_:I

    .line 1657
    return-object p0
.end method

.method public setInputType(I)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1633
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1634
    iput p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->inputType_:I

    .line 1636
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1546
    if-nez p1, :cond_8

    .line 1547
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1549
    :cond_8
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1550
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->label_:Ljava/lang/Object;

    .line 1552
    return-object p0
.end method

.method public setReferer(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2045
    if-nez p1, :cond_8

    .line 2046
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2048
    :cond_8
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 2049
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->referer_:Ljava/lang/Object;

    .line 2051
    return-object p0
.end method

.method public setSingleLine(Z)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1506
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->bitField0_:I

    .line 1507
    iput-boolean p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->singleLine_:Z

    .line 1509
    return-object p0
.end method
