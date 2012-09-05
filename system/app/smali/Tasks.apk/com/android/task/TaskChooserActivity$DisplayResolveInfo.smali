.class final Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;
.super Ljava/lang/Object;
.source "TaskChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/task/TaskChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayResolveInfo"
.end annotation


# instance fields
.field displayIcon:Landroid/graphics/drawable/Drawable;

.field displayLabel:Ljava/lang/CharSequence;

.field extendedInfo:Ljava/lang/CharSequence;

.field origIntent:Landroid/content/Intent;

.field ri:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/android/task/TaskChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/task/TaskChooserActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter "pri"
    .parameter "pLabel"
    .parameter "pInfo"
    .parameter "pOrigIntent"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;->this$0:Lcom/android/task/TaskChooserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p2, p0, Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    .line 258
    iput-object p3, p0, Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 259
    iput-object p4, p0, Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    .line 260
    iput-object p5, p0, Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    .line 261
    return-void
.end method
