.class Ls/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaG/b;


# instance fields
.field final synthetic a:Ls/q;


# direct methods
.method private constructor <init>(Ls/q;)V
    .registers 2
    .parameter

    .prologue
    .line 1890
    iput-object p1, p0, Ls/v;->a:Ls/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ls/q;Ls/r;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1890
    invoke-direct {p0, p1}, Ls/v;-><init>(Ls/q;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5
    .parameter

    .prologue
    .line 1894
    iget-object v0, p0, Ls/v;->a:Ls/q;

    iget-object v0, v0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    iget-object v1, p0, Ls/v;->a:Ls/q;

    iget-object v1, v1, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->b()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d004f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->a(Ljava/lang/String;)V

    .line 1896
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ls/v;->a:Ls/q;

    iget-object v1, v1, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "da_voice-rmi.3gp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1898
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1899
    return-void
.end method
