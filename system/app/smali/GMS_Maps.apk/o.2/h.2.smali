.class Lo/h;
.super Ljava/lang/Object;

# interfaces
.implements Lo/b;


# instance fields
.field final synthetic a:Lo/b;

.field final synthetic b:Lo/g;


# direct methods
.method constructor <init>(Lo/g;Lo/b;)V
    .registers 3

    iput-object p1, p0, Lo/h;->b:Lo/g;

    iput-object p2, p0, Lo/h;->a:Lo/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/a;)V
    .registers 4

    iget-object v0, p0, Lo/h;->b:Lo/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/g;->a(Lo/g;Lo/a;)Lo/a;

    iget-object v0, p0, Lo/h;->a:Lo/b;

    iget-object v1, p0, Lo/h;->b:Lo/g;

    invoke-interface {v0, v1}, Lo/b;->a(Lo/a;)V

    return-void
.end method
