.class Lc/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Le/F;

.field final synthetic b:Lc/i;


# direct methods
.method constructor <init>(Lc/i;Le/F;)V
    .registers 3

    iput-object p1, p0, Lc/j;->b:Lc/i;

    iput-object p2, p0, Lc/j;->a:Le/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-string v0, ""

    iget-object v1, p0, Lc/j;->a:Le/F;

    invoke-virtual {v1}, Le/F;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :goto_e
    return-void

    :cond_f
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lc/j;->b:Lc/i;

    invoke-static {v0}, Lc/i;->a(Lc/i;)Ljava/io/File;

    move-result-object v2

    iget-object v0, p0, Lc/j;->a:Le/F;

    invoke-virtual {v0}, Le/F;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_e
.end method
