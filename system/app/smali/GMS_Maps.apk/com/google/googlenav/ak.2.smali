.class Lcom/google/googlenav/aK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/aL;


# instance fields
.field private a:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/googlenav/aK;->a:Landroid/app/NotificationManager;

    .line 340
    return-void
.end method


# virtual methods
.method public a(ILandroid/app/Notification;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/googlenav/aK;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 350
    return-void
.end method
