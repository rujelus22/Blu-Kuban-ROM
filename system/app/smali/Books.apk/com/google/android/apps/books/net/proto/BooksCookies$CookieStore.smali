.class public final Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BooksCookies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/net/proto/BooksCookies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CookieStore"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;


# instance fields
.field private cookies_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 969
    new-instance v0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;-><init>(Z)V

    sput-object v0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->defaultInstance:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;

    .line 970
    invoke-static {}, Lcom/google/android/apps/books/net/proto/BooksCookies;->internalForceInit()V

    .line 971
    sget-object v0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->defaultInstance:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;

    invoke-direct {v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->initFields()V

    .line 972
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 694
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->cookies_:Ljava/util/List;

    .line 721
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->memoizedSerializedSize:I

    .line 679
    invoke-direct {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->initFields()V

    .line 680
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/net/proto/BooksCookies$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 675
    invoke-direct {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    .line 681
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 694
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->cookies_:Ljava/util/List;

    .line 721
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->memoizedSerializedSize:I

    .line 681
    return-void
.end method

.method static synthetic access$2500(Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 675
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->cookies_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 675
    iput-object p1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->cookies_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;
    .registers 1

    .prologue
    .line 685
    sget-object v0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->defaultInstance:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 705
    return-void
.end method

.method public static newBuilder()Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;
    .registers 1

    .prologue
    .line 802
    #calls: Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->create()Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;
    invoke-static {}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->access$2300()Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCookies(I)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;
    .registers 3
    .parameter "index"

    .prologue
    .line 701
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->cookies_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    return-object v0
.end method

.method public getCookiesCount()I
    .registers 2

    .prologue
    .line 699
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->cookies_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCookiesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 697
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->cookies_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 723
    iget v2, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->memoizedSerializedSize:I

    .line 724
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    move v3, v2

    .line 732
    .end local v2           #size:I
    .local v3, size:I
    :goto_6
    return v3

    .line 726
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_7
    const/4 v2, 0x0

    .line 727
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->getCookiesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    .line 728
    .local v0, element:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;
    const/4 v4, 0x1

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_10

    .line 731
    .end local v0           #element:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;
    :cond_23
    iput v2, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->memoizedSerializedSize:I

    move v3, v2

    .line 732
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->getCookiesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    .line 708
    .local v0, element:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;
    invoke-virtual {v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x0

    .line 710
    .end local v0           #element:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;
    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x1

    goto :goto_1b
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->getSerializedSize()I

    .line 716
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->getCookiesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    .line 717
    .local v0, element:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_b

    .line 719
    .end local v0           #element:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;
    :cond_1c
    return-void
.end method
