.class LaS/l;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic f:LaS/j;


# direct methods
.method constructor <init>(LaS/j;LY/c;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, LaS/l;->f:LaS/j;

    iput-object p3, p0, LaS/l;->a:Ljava/lang/String;

    iput-object p4, p0, LaS/l;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 304
    iget-object v0, p0, LaS/l;->f:LaS/j;

    iget-object v1, p0, LaS/l;->a:Ljava/lang/String;

    iget-object v2, p0, LaS/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LaS/j;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-void
.end method
