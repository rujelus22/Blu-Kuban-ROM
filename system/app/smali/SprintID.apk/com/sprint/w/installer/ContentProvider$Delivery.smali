.class public final Lcom/sprint/w/installer/ContentProvider$Delivery;
.super Ljava/lang/Object;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Delivery"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/w/installer/ContentProvider$Delivery$DeliveryColumns;
    }
.end annotation


# static fields
.field public static final FLAG_SEND_FALSE:I = 0x0

.field public static final FLAG_SEND_TRUE:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    return-void
.end method
