.class Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$2;
.super Ljava/lang/Object;
.source "CradleMainTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->reloadCurrentDayEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

.field final synthetic val$events:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 635
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$2;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    iput-object p2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$2;->val$events:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 637
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$2;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mEventLoader:Lcom/sec/android/app/clockpackage/deskclock/EventLoader;

    if-eqz v0, :cond_d

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$2;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$2;->val$events:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setCurrentDayEvents(Ljava/util/ArrayList;)V

    .line 639
    :cond_d
    return-void
.end method
