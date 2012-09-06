.class Lcom/google/tts/OldPrefsActivity$1$1;
.super Ljava/lang/Object;
.source "OldPrefsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tts/OldPrefsActivity$1;->onInit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/tts/OldPrefsActivity$1;


# direct methods
.method constructor <init>(Lcom/google/tts/OldPrefsActivity$1;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/tts/OldPrefsActivity$1$1;->this$1:Lcom/google/tts/OldPrefsActivity$1;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3
    .parameter "preference"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity$1$1;->this$1:Lcom/google/tts/OldPrefsActivity$1;

    #getter for: Lcom/google/tts/OldPrefsActivity$1;->this$0:Lcom/google/tts/OldPrefsActivity;
    invoke-static {v0}, Lcom/google/tts/OldPrefsActivity$1;->access$0(Lcom/google/tts/OldPrefsActivity$1;)Lcom/google/tts/OldPrefsActivity;

    move-result-object v0

    #calls: Lcom/google/tts/OldPrefsActivity;->sayHello()V
    invoke-static {v0}, Lcom/google/tts/OldPrefsActivity;->access$2(Lcom/google/tts/OldPrefsActivity;)V

    .line 44
    const/4 v0, 0x1

    return v0
.end method
