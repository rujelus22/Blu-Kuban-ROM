.class LF/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LF/d;


# direct methods
.method constructor <init>(LF/d;)V
    .registers 2

    iput-object p1, p0, LF/e;->a:LF/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, LF/e;->a:LF/d;

    const/4 v1, 0x1

    iput v1, v0, LF/d;->a:I

    iget-object v0, p0, LF/e;->a:LF/d;

    const-string v1, "gps_fixup_provider"

    const-string v2, "gps"

    iget-object v3, p0, LF/e;->a:LF/d;

    iget v3, v3, LF/d;->a:I

    invoke-virtual {v0, v1, v2, v3}, LF/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
