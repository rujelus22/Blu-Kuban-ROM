.class Lcom/android/calendar/VCalInfoActivity$2;
.super Ljava/lang/Object;
.source "VCalInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/VCalInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/VCalInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/VCalInfoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/calendar/VCalInfoActivity$2;->this$0:Lcom/android/calendar/VCalInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    .line 275
    iget-object v1, p0, Lcom/android/calendar/VCalInfoActivity$2;->this$0:Lcom/android/calendar/VCalInfoActivity;

    invoke-virtual {v1}, Lcom/android/calendar/VCalInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 277
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 281
    .local v5, values:Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/android/calendar/VCalInfoActivity$2;->this$0:Lcom/android/calendar/VCalInfoActivity;

    #getter for: Lcom/android/calendar/VCalInfoActivity;->mEvents:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/calendar/VCalInfoActivity;->access$200(Lcom/android/calendar/VCalInfoActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/VCalInfoActivity$2;->this$0:Lcom/android/calendar/VCalInfoActivity;

    #getter for: Lcom/android/calendar/VCalInfoActivity;->mPosition:I
    invoke-static {v2}, Lcom/android/calendar/VCalInfoActivity;->access$100(Lcom/android/calendar/VCalInfoActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendarcommon/ICalendar$Component;

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->insertVEvent(Landroid/content/ContentResolver;Lcom/android/calendarcommon/ICalendar$Component;JILandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 285
    iget-object v1, p0, Lcom/android/calendar/VCalInfoActivity$2;->this$0:Lcom/android/calendar/VCalInfoActivity;

    iget-object v2, p0, Lcom/android/calendar/VCalInfoActivity$2;->this$0:Lcom/android/calendar/VCalInfoActivity;

    invoke-virtual {v2}, Lcom/android/calendar/VCalInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 301
    :goto_3d
    iget-object v1, p0, Lcom/android/calendar/VCalInfoActivity$2;->this$0:Lcom/android/calendar/VCalInfoActivity;

    invoke-virtual {v1}, Lcom/android/calendar/VCalInfoActivity;->finish()V

    .line 303
    return-void

    .line 293
    :cond_43
    iget-object v1, p0, Lcom/android/calendar/VCalInfoActivity$2;->this$0:Lcom/android/calendar/VCalInfoActivity;

    iget-object v2, p0, Lcom/android/calendar/VCalInfoActivity$2;->this$0:Lcom/android/calendar/VCalInfoActivity;

    invoke-virtual {v2}, Lcom/android/calendar/VCalInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_3d
.end method
