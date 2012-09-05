.class public Lcom/samsung/swift/notification/SwiftNotification;
.super Landroid/app/Notification;
.source "SwiftNotification.java"


# static fields
.field protected static final NULL_ID:I = -0x1


# instance fields
.field private id:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/app/Notification;-><init>()V

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/swift/notification/SwiftNotification;->id:I

    .line 108
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;J)V
    .registers 6
    .parameter "icon"
    .parameter "tickerText"
    .parameter "when"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/swift/notification/SwiftNotification;->id:I

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "parcel"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Landroid/app/Notification;-><init>(Landroid/os/Parcel;)V

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/swift/notification/SwiftNotification;->id:I

    .line 115
    return-void
.end method

.method public static getPendingIntent(Ljava/lang/Class;)Landroid/app/PendingIntent;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    const/4 v2, 0x0

    .line 147
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 149
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected getId()I
    .registers 2

    .prologue
    .line 130
    iget v0, p0, Lcom/samsung/swift/notification/SwiftNotification;->id:I

    return v0
.end method

.method protected setId(I)V
    .registers 2
    .parameter "id"

    .prologue
    .line 137
    iput p1, p0, Lcom/samsung/swift/notification/SwiftNotification;->id:I

    .line 138
    return-void
.end method
