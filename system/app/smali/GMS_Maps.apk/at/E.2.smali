.class Lat/E;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lat/D;


# direct methods
.method constructor <init>(Lat/D;LY/c;IILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lat/E;->g:Lat/D;

    iput p3, p0, Lat/E;->a:I

    iput p4, p0, Lat/E;->b:I

    iput-object p5, p0, Lat/E;->f:Ljava/lang/String;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 283
    iget-object v0, p0, Lat/E;->g:Lat/D;

    iget v1, p0, Lat/E;->a:I

    iget v2, p0, Lat/E;->b:I

    iget-object v3, p0, Lat/E;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lat/D;->a(Lat/D;IILjava/lang/String;)V

    .line 284
    return-void
.end method
