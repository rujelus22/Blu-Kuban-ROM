.class Lo/u;
.super Ljava/lang/Object;

# interfaces
.implements Lo/A;


# instance fields
.field final synthetic a:Lo/t;


# direct methods
.method constructor <init>(Lo/t;)V
    .registers 2

    iput-object p1, p0, Lo/u;->a:Lo/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const-string v0, "CannedSpeechAlertGenerator"

    const-string v1, "Failed to load bundle"

    invoke-static {v0, v1}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lo/v;)V
    .registers 3

    iget-object v0, p0, Lo/u;->a:Lo/t;

    invoke-static {v0, p1}, Lo/t;->a(Lo/t;Lo/v;)V

    return-void
.end method
