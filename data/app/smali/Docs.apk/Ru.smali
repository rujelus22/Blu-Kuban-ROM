.class LRu;
.super Ljava/lang/Object;
.source "PipeExposer.java"

# interfaces
.implements LQX;


# instance fields
.field final synthetic a:LRt;

.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(LRt;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, LRu;->a:LRt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, LRu;->a:Ljava/lang/String;

    .line 34
    return-void
.end method

.method static synthetic a(LRu;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, LRu;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/os/ParcelFileDescriptor;
    .registers 5

    .prologue
    .line 47
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 48
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 49
    new-instance v2, LRv;

    const-string v3, "Decrypt and copy the content"

    invoke-direct {v2, p0, v3, v1}, LRv;-><init>(LRu;Ljava/lang/String;Ljava/io/OutputStream;)V

    invoke-virtual {v2}, LRv;->start()V

    .line 67
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 42
    iget-object v0, p0, LRu;->a:LRt;

    invoke-static {v0}, LRt;->a(LRt;)LRd;

    move-result-object v0

    iget-object v1, p0, LRu;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, LRd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 38
    return-void
.end method
