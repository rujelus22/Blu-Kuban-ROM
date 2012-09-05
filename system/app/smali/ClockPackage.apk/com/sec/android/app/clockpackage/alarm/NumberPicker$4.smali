.class Lcom/sec/android/app/clockpackage/alarm/NumberPicker$4;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)V
    .registers 2
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->access$900(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 337
    return-void
.end method
