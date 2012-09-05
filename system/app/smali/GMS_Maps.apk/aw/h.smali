.class Law/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Law/g;


# direct methods
.method constructor <init>(Law/g;)V
    .registers 2

    iput-object p1, p0, Law/h;->a:Law/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Law/h;->a:Law/g;

    invoke-static {v0}, Law/g;->a(Law/g;)Law/b;

    move-result-object v0

    invoke-virtual {v0}, Law/b;->notifyDataSetChanged()V

    return-void
.end method
