.class Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab$DismissPopup;
.super Ljava/lang/Object;
.source "MonthViewTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DismissPopup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;)V
    .registers 2
    .parameter

    .prologue
    .line 1589
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab$DismissPopup;->this$0:Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab$DismissPopup;->this$0:Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->access$500(Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1592
    return-void
.end method
