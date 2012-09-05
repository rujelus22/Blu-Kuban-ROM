.class final Lcom/android/browser/ComboViewActivity$TabsAdapter$TabInfo;
.super Ljava/lang/Object;
.source "ComboViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ComboViewActivity$TabsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TabInfo"
.end annotation


# instance fields
.field private final args:Landroid/os/Bundle;

.field private final clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 3
    .parameter
    .parameter "_args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, _class:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Lcom/android/browser/ComboViewActivity$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;

    .line 222
    iput-object p2, p0, Lcom/android/browser/ComboViewActivity$TabsAdapter$TabInfo;->args:Landroid/os/Bundle;

    .line 223
    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/ComboViewActivity$TabsAdapter$TabInfo;)Ljava/lang/Class;
    .registers 2
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/browser/ComboViewActivity$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/ComboViewActivity$TabsAdapter$TabInfo;)Landroid/os/Bundle;
    .registers 2
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/browser/ComboViewActivity$TabsAdapter$TabInfo;->args:Landroid/os/Bundle;

    return-object v0
.end method
