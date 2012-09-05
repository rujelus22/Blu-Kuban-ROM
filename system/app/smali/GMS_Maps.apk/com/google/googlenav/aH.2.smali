.class Lcom/google/googlenav/aH;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/aI;


# instance fields
.field private a:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/googlenav/aH;->a:Landroid/app/NotificationManager;

    return-void
.end method


# virtual methods
.method public a(ILandroid/app/Notification;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/aH;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
