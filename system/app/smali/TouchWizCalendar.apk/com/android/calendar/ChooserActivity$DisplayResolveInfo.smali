.class final Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;
.super Ljava/lang/Object;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ChooserActivity;
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

.field final synthetic this$0:Lcom/android/calendar/ChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/ChooserActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter "pri"
    .parameter "pLabel"
    .parameter "pInfo"
    .parameter "pOrigIntent"

    .prologue
    .line 665
    iput-object p1, p0, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;->this$0:Lcom/android/calendar/ChooserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 667
    iput-object p2, p0, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    .line 669
    iput-object p3, p0, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 671
    iput-object p4, p0, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    .line 673
    iput-object p5, p0, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    .line 675
    return-void
.end method
