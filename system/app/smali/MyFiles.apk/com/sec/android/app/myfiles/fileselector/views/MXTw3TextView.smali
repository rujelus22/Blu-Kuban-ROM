.class public Lcom/sec/android/app/myfiles/fileselector/views/MXTw3TextView;
.super Landroid/widget/TextView;
.source "MXTw3TextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXTw3TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 20
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXTw3TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXTw3TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 32
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXTw3TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXTw3TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 44
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXTw3TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 48
    return-void
.end method
