.class Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;
.super Ljava/lang/Object;
.source "InviteAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/invite/InviteAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SectionInfo"
.end annotation


# instance fields
.field private final sectionChar:Ljava/lang/String;

.field private sectionCount:I

.field private sectionPos:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .parameter "sectionChar"
    .parameter "sectionPos"

    .prologue
    const/4 v1, 0x1

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-static {}, Lcom/vlingo/client/invite/InviteAdaptor;->access$700()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 262
    const-string p1, "#"

    .line 263
    :cond_1d
    iput-object p1, p0, Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;->sectionChar:Ljava/lang/String;

    .line 264
    iput p2, p0, Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;->sectionPos:I

    .line 265
    iput v1, p0, Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;->sectionCount:I

    .line 266
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/vlingo/client/invite/InviteAdaptor$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 238
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 238
    iget v0, p0, Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;->sectionPos:I

    return v0
.end method

.method static synthetic access$302(Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 238
    iput p1, p0, Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;->sectionCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;->sectionChar:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 238
    invoke-static {p0, p1}, Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;->isNewSection(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isNewSection(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "sTrimmed"
    .parameter "s2"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 243
    invoke-static {}, Lcom/vlingo/client/invite/InviteAdaptor;->access$700()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-static {}, Lcom/vlingo/client/invite/InviteAdaptor;->access$700()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 250
    :cond_2c
    :goto_2c
    return v0

    :cond_2d
    move v0, v1

    .line 247
    goto :goto_2c
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;->sectionChar:Ljava/lang/String;

    return-object v0
.end method
