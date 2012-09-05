.class public final Lcom/sprint/id/updater/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/id/updater/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final CONTENT_PROVIDER:Ljava/lang/String; = "com.sprint.permission.CONTENT_PROVIDER"

.field public static final SET_PREFERRED_APPLICATIONS:Ljava/lang/String; = "com.sprint.permission.SET_PREFERRED_APPLICATIONS"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
