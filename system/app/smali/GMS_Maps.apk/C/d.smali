.class LC/d;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:LC/b;


# direct methods
.method constructor <init>(LC/b;)V
    .registers 2

    iput-object p1, p0, LC/d;->a:LC/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, LC/d;->a:LC/b;

    invoke-static {v0}, LC/b;->a(LC/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    iget-object v0, p0, LC/d;->a:LC/b;

    invoke-static {v0}, LC/b;->a(LC/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_21
    return-void
.end method
