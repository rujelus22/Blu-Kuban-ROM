.class public final Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BooksCookies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;",
        "Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 815
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$2300()Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;
    .registers 1

    .prologue
    .line 809
    invoke-static {}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->create()Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;
    .registers 3

    .prologue
    .line 818
    new-instance v0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;

    invoke-direct {v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;-><init>()V

    .line 819
    .local v0, builder:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;
    new-instance v1, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;-><init>(Lcom/google/android/apps/books/net/proto/BooksCookies$1;)V

    iput-object v1, v0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;

    .line 820
    return-object v0
.end method


# virtual methods
.method public addCookies(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;)Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 946
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;

    #getter for: Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->cookies_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->access$2500(Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 947
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->cookies_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->access$2502(Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;Ljava/util/List;)Ljava/util/List;

    .line 949
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;

    #getter for: Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->cookies_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->access$2500(Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->build()Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 950
    return-object p0
.end method

.method public addCookies(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;)Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 936
    if-nez p1, :cond_8

    .line 937
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 939
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;

    #getter for: Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->cookies_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->access$2500(Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 940
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->cookies_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->access$2502(Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;Ljava/util/List;)Ljava/util/List;

    .line 942
    :cond_1e
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;

    #getter for: Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->cookies_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->access$2500(Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    return-object p0
.end method

.method public build()Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;
    .registers 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 849
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;

    invoke-static {v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 851
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->buildPartial()Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;
    .registers 4

    .prologue
    .line 864
    iget-object v1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;

    if-nez v1, :cond_c

    .line 865
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 868
    :cond_c
    iget-object v1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;

    #getter for: Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->cookies_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->access$2500(Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_25

    .line 869
    iget-object v1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;

    iget-object v2, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;

    #getter for: Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->cookies_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->access$2500(Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->cookies_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->access$2502(Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;Ljava/util/List;)Ljava/util/List;

    .line 872
    :cond_25
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;

    .line 873
    .local v0, returnMe:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;

    .line 874
    return-object v0
.end method

.method public clone()Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;
    .registers 3

    .prologue
    .line 837
    invoke-static {}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->create()Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->mergeFrom(Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;)Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->clone()Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->clone()Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;

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
    .line 809
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->clone()Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 845
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;

    invoke-virtual {v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;)Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 878
    invoke-static {}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->getDefaultInstance()Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 885
    :cond_6
    :goto_6
    return-object p0

    .line 879
    :cond_7
    #getter for: Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->cookies_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->access$2500(Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 880
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;

    #getter for: Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->cookies_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->access$2500(Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 881
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->cookies_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->access$2502(Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;Ljava/util/List;)Ljava/util/List;

    .line 883
    :cond_27
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;

    #getter for: Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->cookies_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->access$2500(Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->cookies_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->access$2500(Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 893
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 894
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_1e

    .line 898
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 899
    :sswitch_d
    return-object p0

    .line 904
    :sswitch_e
    invoke-static {}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->newBuilder()Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    move-result-object v0

    .line 905
    .local v0, subBuilder:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 906
    invoke-virtual {v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->buildPartial()Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->addCookies(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;)Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;

    goto :goto_0

    .line 894
    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
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
    .line 809
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;

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
    .line 809
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;

    move-result-object v0

    return-object v0
.end method
