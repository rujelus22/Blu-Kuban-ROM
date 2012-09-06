.class Lcom/android/calendar/AllInOneActivity$2;
.super Ljava/lang/Object;
.source "AllInOneActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AllInOneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AllInOneActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/calendar/AllInOneActivity$2;->this$0:Lcom/android/calendar/AllInOneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity$2;->this$0:Lcom/android/calendar/AllInOneActivity;

    const-wide/16 v1, -0x1

    #calls: Lcom/android/calendar/AllInOneActivity;->updateSecondaryTitleFields(J)V
    invoke-static {v0, v1, v2}, Lcom/android/calendar/AllInOneActivity;->access$500(Lcom/android/calendar/AllInOneActivity;J)V

    .line 229
    return-void
.end method
