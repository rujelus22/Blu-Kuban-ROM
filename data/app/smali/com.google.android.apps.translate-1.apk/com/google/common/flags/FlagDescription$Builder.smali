.class Lcom/google/common/flags/FlagDescription$Builder;
.super Ljava/lang/Object;
.source "FlagDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flags/FlagDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private altName:Ljava/lang/String;

.field private final containerClassName:Ljava/lang/String;

.field private doc:Ljava/lang/String;

.field private docLevel:Lcom/google/common/flags/DocLevel;

.field private shortFlagName:Ljava/lang/String;

.field private final simpleFieldName:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "containerClassName"
    .parameter "simpleFieldName"

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/google/common/flags/FlagDescription$Builder;->containerClassName:Ljava/lang/String;

    .line 143
    iput-object p2, p0, Lcom/google/common/flags/FlagDescription$Builder;->simpleFieldName:Ljava/lang/String;

    .line 144
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/flags/FlagDescription$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/google/common/flags/FlagDescription$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method altName(Ljava/lang/String;)Lcom/google/common/flags/FlagDescription$Builder;
    .registers 2
    .parameter "altName"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/common/flags/FlagDescription$Builder;->altName:Ljava/lang/String;

    .line 180
    return-object p0
.end method

.method build()Lcom/google/common/flags/FlagDescription;
    .registers 10

    .prologue
    .line 195
    new-instance v0, Lcom/google/common/flags/FlagDescription;

    iget-object v1, p0, Lcom/google/common/flags/FlagDescription$Builder;->shortFlagName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/common/flags/FlagDescription$Builder;->containerClassName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/common/flags/FlagDescription$Builder;->simpleFieldName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/common/flags/FlagDescription$Builder;->type:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/common/flags/FlagDescription$Builder;->doc:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/common/flags/FlagDescription$Builder;->docLevel:Lcom/google/common/flags/DocLevel;

    iget-object v7, p0, Lcom/google/common/flags/FlagDescription$Builder;->altName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/common/flags/FlagDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/flags/DocLevel;Ljava/lang/String;Lcom/google/common/flags/FlagDescription$1;)V

    return-object v0
.end method

.method doc(Ljava/lang/String;)Lcom/google/common/flags/FlagDescription$Builder;
    .registers 2
    .parameter "doc"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/common/flags/FlagDescription$Builder;->doc:Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method docLevel(Lcom/google/common/flags/DocLevel;)Lcom/google/common/flags/FlagDescription$Builder;
    .registers 2
    .parameter "docLevel"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/common/flags/FlagDescription$Builder;->docLevel:Lcom/google/common/flags/DocLevel;

    .line 188
    return-object p0
.end method

.method shortFlagName(Ljava/lang/String;)Lcom/google/common/flags/FlagDescription$Builder;
    .registers 2
    .parameter "shortFlagName"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/common/flags/FlagDescription$Builder;->shortFlagName:Ljava/lang/String;

    .line 154
    return-object p0
.end method

.method type(Ljava/lang/String;)Lcom/google/common/flags/FlagDescription$Builder;
    .registers 2
    .parameter "type"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/common/flags/FlagDescription$Builder;->type:Ljava/lang/String;

    .line 164
    return-object p0
.end method
