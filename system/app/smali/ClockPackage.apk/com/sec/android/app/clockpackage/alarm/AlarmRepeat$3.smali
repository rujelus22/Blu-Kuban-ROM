.class Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$3;
.super Ljava/lang/Object;
.source "AlarmRepeat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;)V
    .registers 2
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->setResult(I)V

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->finish()V

    .line 213
    return-void
.end method
