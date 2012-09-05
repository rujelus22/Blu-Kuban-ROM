.class Lcom/sec/android/app/clockpackage/deskclock/CradleMain$2;
.super Ljava/lang/Object;
.source "CradleMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->reloadCurrentDayEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

.field final synthetic val$events:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 829
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$2;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    iput-object p2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$2;->val$events:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 831
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$2;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$2;->val$events:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setCurrentDayEvents(Ljava/util/ArrayList;)V

    .line 832
    return-void
.end method
