.class public Lcom/android/settings/mt/MobileTracker;
.super Landroid/app/Activity;
.source "MobileTracker.java"


# static fields
.field public static number:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-string v0, "5556"

    sput-object v0, Lcom/android/settings/mt/MobileTracker;->number:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/android/settings/mt/MobileTracker;->setContentView(I)V

    .line 20
    return-void
.end method
