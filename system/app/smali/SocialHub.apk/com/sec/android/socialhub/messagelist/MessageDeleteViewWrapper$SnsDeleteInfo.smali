.class public Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;
.super Ljava/lang/Object;
.source "MessageDeleteViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnsDeleteInfo"
.end annotation


# instance fields
.field public array_msg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public array_spType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public array_thread:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public array_type:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 718
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 719
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;->array_msg:Ljava/util/ArrayList;

    .line 720
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;->array_thread:Ljava/util/ArrayList;

    .line 721
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;->array_type:Ljava/util/ArrayList;

    .line 722
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;->array_spType:Ljava/util/ArrayList;

    .line 723
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "spType"
    .parameter "msg"
    .parameter "thr"
    .parameter "type"

    .prologue
    .line 727
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;->array_spType:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;->array_msg:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;->array_thread:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;->array_type:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 735
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;->array_spType:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
