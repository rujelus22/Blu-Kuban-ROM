.class Lcom/google/android/music/LicenseActivity$2;
.super Ljava/lang/Object;
.source "LicenseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/LicenseActivity;->showPageOfText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/LicenseActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/LicenseActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/music/LicenseActivity$2;->this$0:Lcom/google/android/music/LicenseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dlgi"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/music/LicenseActivity$2;->this$0:Lcom/google/android/music/LicenseActivity;

    invoke-virtual {v0}, Lcom/google/android/music/LicenseActivity;->finish()V

    .line 160
    return-void
.end method
