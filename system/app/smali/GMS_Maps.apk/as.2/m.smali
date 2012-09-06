.class LaS/m;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:LaS/j;


# direct methods
.method constructor <init>(LaS/j;LY/c;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, LaS/m;->b:LaS/j;

    iput-object p3, p0, LaS/m;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 339
    iget-object v0, p0, LaS/m;->b:LaS/j;

    iget-object v1, p0, LaS/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, LaS/j;->d(Ljava/lang/String;)V

    .line 340
    return-void
.end method
