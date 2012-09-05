.class Ly/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cK;


# instance fields
.field final synthetic a:Ly/g;


# direct methods
.method private constructor <init>(Ly/g;)V
    .registers 2

    iput-object p1, p0, Ly/i;->a:Ly/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ly/g;Ly/h;)V
    .registers 3

    invoke-direct {p0, p1}, Ly/i;-><init>(Ly/g;)V

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Ly/i;->a:Ly/g;

    invoke-static {v0, v3}, Ly/g;->a(Ly/g;Z)Z

    if-nez p1, :cond_1a

    iget-object v0, p0, Ly/i;->a:Ly/g;

    iget-object v0, v0, Ly/g;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/i;->a:Ly/g;

    iget-object v1, v1, Ly/g;->b:Landroid/content/Context;

    const v2, 0x7f0b0039

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->a(Ljava/lang/String;)V

    :cond_1a
    return v3
.end method
