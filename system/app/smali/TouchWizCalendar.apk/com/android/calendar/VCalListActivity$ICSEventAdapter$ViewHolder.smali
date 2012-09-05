.class Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "VCalListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/VCalListActivity$ICSEventAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field calendar:Landroid/view/View;

.field photo:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/android/calendar/VCalListActivity$ICSEventAdapter;

.field title:Landroid/widget/TextView;

.field when:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/calendar/VCalListActivity$ICSEventAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 1206
    iput-object p1, p0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;->this$1:Lcom/android/calendar/VCalListActivity$ICSEventAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
