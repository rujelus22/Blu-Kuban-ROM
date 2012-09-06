.class Lat/A;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lat/I;

.field final synthetic b:Lat/z;


# direct methods
.method constructor <init>(Lat/z;LY/c;Lat/I;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1114
    iput-object p1, p0, Lat/A;->b:Lat/z;

    iput-object p3, p0, Lat/A;->a:Lat/I;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    .prologue
    .line 1117
    iget-object v0, p0, Lat/A;->b:Lat/z;

    iget-object v1, p0, Lat/A;->a:Lat/I;

    invoke-static {v0, v1}, Lat/z;->a(Lat/z;Lat/I;)V

    .line 1118
    return-void
.end method
