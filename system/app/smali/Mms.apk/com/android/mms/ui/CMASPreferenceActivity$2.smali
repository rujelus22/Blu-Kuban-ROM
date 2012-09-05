.class Lcom/android/mms/ui/CMASPreferenceActivity$2;
.super Ljava/lang/Object;
.source "CMASPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CMASPreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CMASPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CMASPreferenceActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/mms/ui/CMASPreferenceActivity$2;->this$0:Lcom/android/mms/ui/CMASPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3
    .parameter "preference"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity$2;->this$0:Lcom/android/mms/ui/CMASPreferenceActivity;

    #calls: Lcom/android/mms/ui/CMASPreferenceActivity;->showCmasPreviewDialog()V
    invoke-static {v0}, Lcom/android/mms/ui/CMASPreferenceActivity;->access$000(Lcom/android/mms/ui/CMASPreferenceActivity;)V

    .line 130
    const/4 v0, 0x1

    return v0
.end method
