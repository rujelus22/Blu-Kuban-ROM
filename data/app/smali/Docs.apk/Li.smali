.class public LLi;
.super Ljava/lang/Object;
.source "NotificationAccessorImpl.java"

# interfaces
.implements LLh;


# instance fields
.field private final a:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/app/NotificationManager;)V
    .registers 2
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, LLi;->a:Landroid/app/NotificationManager;

    .line 27
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, LLi;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 42
    return-void
.end method

.method public a(ILandroid/app/Notification;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, LLi;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 37
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, LLi;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 47
    return-void
.end method

.method public a(Ljava/lang/String;ILandroid/app/Notification;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, LLi;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 32
    return-void
.end method
