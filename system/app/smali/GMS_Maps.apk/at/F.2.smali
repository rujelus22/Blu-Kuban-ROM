.class Lat/F;
.super Lcom/google/googlenav/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lat/D;


# direct methods
.method constructor <init>(Lat/D;)V
    .registers 2
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lat/F;->a:Lat/D;

    invoke-direct {p0}, Lcom/google/googlenav/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lat/F;->a:Lat/D;

    invoke-static {v0}, Lat/D;->a(Lat/D;)V

    .line 298
    return-void
.end method
