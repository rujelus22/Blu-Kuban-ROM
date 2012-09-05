.class public final Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BooksCookies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/net/proto/BooksCookies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cookie"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;


# instance fields
.field private commentUrl_:Ljava/lang/String;

.field private comment_:Ljava/lang/String;

.field private domain_:Ljava/lang/String;

.field private expiryDate_:J

.field private hasComment:Z

.field private hasCommentUrl:Z

.field private hasDomain:Z

.field private hasExpiryDate:Z

.field private hasIsSecure:Z

.field private hasName:Z

.field private hasPath:Z

.field private hasValue:Z

.field private hasVersion:Z

.field private isSecure_:Z

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/String;

.field private path_:Ljava/lang/String;

.field private ports_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private value_:Ljava/lang/String;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 667
    new-instance v0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;-><init>(Z)V

    sput-object v0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->defaultInstance:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    .line 668
    invoke-static {}, Lcom/google/android/apps/books/net/proto/BooksCookies;->internalForceInit()V

    .line 669
    sget-object v0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->defaultInstance:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    invoke-direct {v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->initFields()V

    .line 670
    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->name_:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->value_:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->comment_:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->commentUrl_:Ljava/lang/String;

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->expiryDate_:J

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->domain_:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->path_:Ljava/lang/String;

    .line 79
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->ports_:Ljava/util/List;

    .line 92
    iput-boolean v2, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->isSecure_:Z

    .line 99
    iput v2, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->version_:I

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->memoizedSerializedSize:I

    .line 15
    invoke-direct {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->initFields()V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/net/proto/BooksCookies$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 5
    .parameter "noInit"

    .prologue
    const/4 v2, 0x0

    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->name_:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->value_:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->comment_:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->commentUrl_:Ljava/lang/String;

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->expiryDate_:J

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->domain_:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->path_:Ljava/lang/String;

    .line 79
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->ports_:Ljava/util/List;

    .line 92
    iput-boolean v2, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->isSecure_:Z

    .line 99
    iput v2, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->version_:I

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->memoizedSerializedSize:I

    .line 17
    return-void
.end method

.method static synthetic access$1002(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasCommentUrl:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->commentUrl_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasExpiryDate:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-wide p1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->expiryDate_:J

    return-wide p1
.end method

.method static synthetic access$1402(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasDomain:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->domain_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasPath:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->path_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasIsSecure:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->isSecure_:Z

    return p1
.end method

.method static synthetic access$2002(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasVersion:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->version_:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->ports_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->ports_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasName:Z

    return p1
.end method

.method static synthetic access$502(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasValue:Z

    return p1
.end method

.method static synthetic access$702(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->value_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasComment:Z

    return p1
.end method

.method static synthetic access$902(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->comment_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->defaultInstance:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 104
    return-void
.end method

.method public static newBuilder()Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;
    .registers 1

    .prologue
    .line 267
    #calls: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->create()Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;
    invoke-static {}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->access$100()Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->comment_:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->commentUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->domain_:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryDate()J
    .registers 3

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->expiryDate_:J

    return-wide v0
.end method

.method public getIsSecure()Z
    .registers 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->isSecure_:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->path_:Ljava/lang/String;

    return-object v0
.end method

.method public getPortsCount()I
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->ports_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPortsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->ports_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    .line 147
    iget v3, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->memoizedSerializedSize:I

    .line 148
    .local v3, size:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_7

    move v4, v3

    .line 197
    .end local v3           #size:I
    .local v4, size:I
    :goto_6
    return v4

    .line 150
    .end local v4           #size:I
    .restart local v3       #size:I
    :cond_7
    const/4 v3, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasName()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 152
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 155
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasValue()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 156
    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 159
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasComment()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 160
    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getComment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 163
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasCommentUrl()Z

    move-result v5

    if-eqz v5, :cond_48

    .line 164
    const/4 v5, 0x4

    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getCommentUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 167
    :cond_48
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasExpiryDate()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 168
    const/4 v5, 0x5

    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getExpiryDate()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v5

    add-int/2addr v3, v5

    .line 171
    :cond_58
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasDomain()Z

    move-result v5

    if-eqz v5, :cond_68

    .line 172
    const/4 v5, 0x6

    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getDomain()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 175
    :cond_68
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasPath()Z

    move-result v5

    if-eqz v5, :cond_78

    .line 176
    const/4 v5, 0x7

    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 180
    :cond_78
    const/4 v0, 0x0

    .line 181
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getPortsList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_81
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_97

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 182
    .local v1, element:I
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_81

    .line 185
    .end local v1           #element:I
    :cond_97
    add-int/2addr v3, v0

    .line 186
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getPortsList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v5

    .line 188
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasIsSecure()Z

    move-result v5

    if-eqz v5, :cond_b4

    .line 189
    const/16 v5, 0x9

    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getIsSecure()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v3, v5

    .line 192
    :cond_b4
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasVersion()Z

    move-result v5

    if-eqz v5, :cond_c5

    .line 193
    const/16 v5, 0xa

    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getVersion()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v3, v5

    .line 196
    :cond_c5
    iput v3, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->memoizedSerializedSize:I

    move v4, v3

    .line 197
    .end local v3           #size:I
    .restart local v4       #size:I
    goto/16 :goto_6
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->version_:I

    return v0
.end method

.method public hasComment()Z
    .registers 2

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasComment:Z

    return v0
.end method

.method public hasCommentUrl()Z
    .registers 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasCommentUrl:Z

    return v0
.end method

.method public hasDomain()Z
    .registers 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasDomain:Z

    return v0
.end method

.method public hasExpiryDate()Z
    .registers 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasExpiryDate:Z

    return v0
.end method

.method public hasIsSecure()Z
    .registers 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasIsSecure:Z

    return v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasName:Z

    return v0
.end method

.method public hasPath()Z
    .registers 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasPath:Z

    return v0
.end method

.method public hasValue()Z
    .registers 2

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasValue:Z

    return v0
.end method

.method public hasVersion()Z
    .registers 2

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasVersion:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasName:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 107
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getSerializedSize()I

    .line 113
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasName()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 114
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 116
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 117
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 119
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasComment()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 120
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 122
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasCommentUrl()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 123
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getCommentUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 125
    :cond_3b
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasExpiryDate()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 126
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getExpiryDate()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 128
    :cond_49
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasDomain()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 129
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 131
    :cond_57
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasPath()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 132
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 134
    :cond_65
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getPortsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 135
    .local v0, element:I
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    goto :goto_6d

    .line 137
    .end local v0           #element:I
    :cond_83
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasIsSecure()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 138
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getIsSecure()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 140
    :cond_92
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasVersion()Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 141
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getVersion()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 143
    :cond_a1
    return-void
.end method
