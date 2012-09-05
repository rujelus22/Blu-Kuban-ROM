.class Lcom/sprint/dsa/PageAlerts$ViewHolder;
.super Ljava/lang/Object;
.source "PageAlerts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/PageAlerts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field m_desc:Landroid/widget/TextView;

.field m_header:Landroid/widget/TextView;

.field m_icon:Landroid/widget/ImageView;

.field m_title:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sprint/dsa/PageAlerts;


# direct methods
.method private constructor <init>(Lcom/sprint/dsa/PageAlerts;)V
    .registers 2
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/sprint/dsa/PageAlerts$ViewHolder;->this$0:Lcom/sprint/dsa/PageAlerts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprint/dsa/PageAlerts;Lcom/sprint/dsa/PageAlerts$ViewHolder;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/sprint/dsa/PageAlerts$ViewHolder;-><init>(Lcom/sprint/dsa/PageAlerts;)V

    return-void
.end method
