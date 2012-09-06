.class Lai/b;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic f:Lai/c;

.field final synthetic g:Lai/a;


# direct methods
.method constructor <init>(Lai/a;LY/c;Ljava/lang/String;ILai/c;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lai/b;->g:Lai/a;

    iput-object p3, p0, Lai/b;->a:Ljava/lang/String;

    iput p4, p0, Lai/b;->b:I

    iput-object p5, p0, Lai/b;->f:Lai/c;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 56
    :try_start_0
    iget-object v0, p0, Lai/b;->g:Lai/a;

    invoke-static {v0}, Lai/a;->a(Lai/a;)Landroid/location/Geocoder;

    move-result-object v0

    iget-object v1, p0, Lai/b;->a:Ljava/lang/String;

    iget v2, p0, Lai/b;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lai/b;->f:Lai/c;

    invoke-interface {v1, v0}, Lai/c;->a(Ljava/util/List;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    .line 61
    :goto_13
    return-void

    .line 58
    :catch_14
    move-exception v0

    .line 59
    iget-object v0, p0, Lai/b;->f:Lai/c;

    invoke-interface {v0}, Lai/c;->a()V

    goto :goto_13
.end method
