.class Ly/x;
.super Ljava/lang/Object;

# interfaces
.implements LaT/b;


# instance fields
.field final synthetic a:Ly/s;


# direct methods
.method private constructor <init>(Ly/s;)V
    .registers 2

    iput-object p1, p0, Ly/x;->a:Ly/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ly/s;Ly/t;)V
    .registers 3

    invoke-direct {p0, p1}, Ly/x;-><init>(Ly/s;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    iget-object v0, p0, Ly/x;->a:Ly/s;

    iget-object v0, v0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/x;->a:Ly/s;

    iget-object v1, v1, Ly/s;->b:Landroid/content/Context;

    const v2, 0x7f0b004b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ly/x;->a:Ly/s;

    iget-object v1, v1, Ly/s;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "da_voice-rmi.3gp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
