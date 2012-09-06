.class Li/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH/f;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Li/v;


# direct methods
.method constructor <init>(Li/v;Ljava/io/File;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Li/x;->b:Li/v;

    iput-object p2, p0, Li/x;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/FileOutputStream;
    .registers 3

    .prologue
    .line 447
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Li/x;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 444
    invoke-virtual {p0}, Li/x;->a()Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method
