.class Laz/b;
.super Lap/b;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Laz/c;

.field final synthetic g:Laz/a;


# direct methods
.method constructor <init>(Laz/a;Lap/c;Ljava/lang/String;ILaz/c;)V
    .registers 6

    iput-object p1, p0, Laz/b;->g:Laz/a;

    iput-object p3, p0, Laz/b;->a:Ljava/lang/String;

    iput p4, p0, Laz/b;->e:I

    iput-object p5, p0, Laz/b;->f:Laz/c;

    invoke-direct {p0, p2}, Lap/b;-><init>(Lap/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Laz/b;->g:Laz/a;

    invoke-static {v0}, Laz/a;->a(Laz/a;)Landroid/location/Geocoder;

    move-result-object v0

    iget-object v1, p0, Laz/b;->a:Ljava/lang/String;

    iget v2, p0, Laz/b;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Laz/b;->f:Laz/c;

    invoke-interface {v1, v0}, Laz/c;->a(Ljava/util/List;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    iget-object v0, p0, Laz/b;->f:Laz/c;

    invoke-interface {v0}, Laz/c;->a()V

    goto :goto_13
.end method
