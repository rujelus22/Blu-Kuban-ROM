.class public Lcom/google/android/maps/driveabout/app/dh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 115
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/maps/driveabout/app/dh;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 138
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 160
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 182
    sget-boolean v0, Lcom/google/android/maps/driveabout/app/dh;->a:Z

    if-eqz v0, :cond_9

    .line 183
    const/16 v0, 0x45

    invoke-static {v0, p0, p1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_9
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 149
    if-eqz p1, :cond_8

    const-string v0, "t"

    :goto_4
    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void

    .line 149
    :cond_8
    const-string v0, "f"

    goto :goto_4
.end method

.method public static a(Z)V
    .registers 1
    .parameter

    .prologue
    .line 123
    sput-boolean p0, Lcom/google/android/maps/driveabout/app/dh;->a:Z

    .line 124
    return-void
.end method

.method public static b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 201
    sget-boolean v0, Lcom/google/android/maps/driveabout/app/dh;->a:Z

    if-eqz v0, :cond_b

    .line 202
    invoke-static {}, LaT/k;->a()LaT/k;

    move-result-object v0

    invoke-virtual {v0, p0}, LaT/k;->a(Z)V

    .line 204
    :cond_b
    return-void
.end method
