.class Lcom/android/internal/policy/impl/ClockWidget$CmasEmergencyAlert;
.super Landroid/widget/LinearLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CmasEmergencyAlert"
.end annotation


# static fields
.field private static final READ_PROJECTION:[Ljava/lang/String; = null

.field private static final UNREAD_CMASSELECTION:Ljava/lang/String; = "(read=0 AND service_category=4096)"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 920
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "read"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/ClockWidget$CmasEmergencyAlert;->READ_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 927
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 928
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 932
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 934
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$CmasEmergencyAlert;->updateText()V

    .line 935
    return-void
.end method

.method public onCmasRecieved()V
    .registers 2

    .prologue
    .line 964
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$CmasEmergencyAlert;->setVisibility(I)V

    .line 965
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 939
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 940
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 944
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 945
    return-void
.end method

.method public updateText()V
    .registers 8

    .prologue
    .line 949
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$CmasEmergencyAlert;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 950
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/policy/impl/ClockWidget$CmasEmergencyAlert;->READ_PROJECTION:[Ljava/lang/String;

    const-string v3, "(read=0 AND service_category=4096)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 951
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_20

    .line 952
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ClockWidget$CmasEmergencyAlert;->setVisibility(I)V

    .line 956
    :goto_1c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 961
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #cursor:Landroid/database/Cursor;
    :goto_1f
    return-void

    .line 954
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_20
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ClockWidget$CmasEmergencyAlert;->setVisibility(I)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_1c

    .line 957
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_26
    move-exception v1

    goto :goto_1f
.end method
