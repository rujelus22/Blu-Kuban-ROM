.class LA/d;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:LA/b;


# direct methods
.method constructor <init>(LA/b;)V
    .registers 2
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, LA/d;->a:LA/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 256
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, LA/d;->a:LA/b;

    invoke-static {v0}, LA/b;->a(LA/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    .line 257
    iget-object v0, p0, LA/d;->a:LA/b;

    invoke-static {v0}, LA/b;->a(LA/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 256
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 259
    :cond_21
    return-void
.end method
