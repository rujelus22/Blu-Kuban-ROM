.class LC/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LC/z;

.field final synthetic b:LC/C;


# direct methods
.method constructor <init>(LC/C;LC/z;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, LC/D;->b:LC/C;

    iput-object p2, p0, LC/D;->a:LC/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 245
    iget-object v0, p0, LC/D;->b:LC/C;

    invoke-static {v0}, LC/C;->a(LC/C;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC/y;

    .line 246
    iget-object v2, p0, LC/D;->a:LC/z;

    invoke-interface {v0, v2}, LC/y;->a(LC/z;)V

    goto :goto_a

    .line 248
    :cond_1c
    return-void
.end method
