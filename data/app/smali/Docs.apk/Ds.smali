.class LDs;
.super Ljava/lang/Object;
.source "AccessibilityHoverHandler.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:LDr;

.field final synthetic a:Landroid/text/Spannable;

.field final synthetic a:Landroid/view/accessibility/AccessibilityManager;

.field private a:[F


# direct methods
.method constructor <init>(LDr;Landroid/text/Spannable;Landroid/view/accessibility/AccessibilityManager;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, LDs;->a:LDr;

    iput-object p2, p0, LDs;->a:Landroid/text/Spannable;

    iput-object p3, p0, LDs;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, LDs;->a:[F

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 161
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 11
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    .line 167
    iget-object v0, p0, LDs;->a:[F

    if-nez v0, :cond_17

    .line 168
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, LDs;->a:[F

    .line 169
    iget-object v0, p0, LDs;->a:LDr;

    iget-object v1, p0, LDs;->a:[F

    invoke-static {v0, v1}, LDr;->a(LDr;[F)V

    .line 172
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 176
    iget-object v2, p0, LDs;->a:LDr;

    invoke-static {v2}, LDr;->a(LDr;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    if-ne v2, p0, :cond_32

    iget-object v2, p0, LDs;->a:LDr;

    invoke-static {v2}, LDr;->a(LDr;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-lez v2, :cond_52

    .line 177
    :cond_32
    iget-object v0, p0, LDs;->a:LDr;

    invoke-static {v0}, LDr;->a(LDr;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 178
    iget-object v0, p0, LDs;->a:LDr;

    invoke-static {v0}, LDr;->a(LDr;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 179
    iget-object v0, p0, LDs;->a:LDr;

    invoke-static {v0}, LDr;->a(LDr;)Landroid/hardware/SensorEventListener;

    move-result-object v0

    if-ne v0, p0, :cond_51

    .line 180
    iget-object v0, p0, LDs;->a:LDr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LDr;->a(LDr;Landroid/hardware/SensorEventListener;)Landroid/hardware/SensorEventListener;

    .line 216
    :cond_51
    :goto_51
    return-void

    .line 186
    :cond_52
    iget-object v2, p0, LDs;->a:LDr;

    invoke-static {v2}, LDr;->b(LDr;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_51

    .line 189
    iget-object v2, p0, LDs;->a:LDr;

    invoke-static {v2, v0, v1}, LDr;->a(LDr;J)J

    .line 192
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 193
    iget-object v1, p0, LDs;->a:LDr;

    invoke-static {v1, v0}, LDr;->a(LDr;[F)V

    .line 194
    iget-object v1, p0, LDs;->a:LDr;

    iget-object v2, p0, LDs;->a:[F

    invoke-static {v1, v2, v0}, LDr;->a(LDr;[F[F)D

    move-result-wide v1

    .line 196
    const-wide v3, 0x3fd0c152382d7365L

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_51

    .line 200
    aget v1, v0, v8

    iget-object v2, p0, LDs;->a:[F

    aget v2, v2, v8

    sub-float/2addr v1, v2

    float-to-double v2, v1

    .line 201
    aget v0, v0, v6

    iget-object v1, p0, LDs;->a:[F

    aget v1, v1, v6

    sub-float/2addr v0, v1

    float-to-double v0, v0

    .line 203
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_e7

    .line 207
    :goto_a3
    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_e1

    .line 208
    iget-object v0, p0, LDs;->a:LDr;

    invoke-static {v0, v8}, LDr;->a(LDr;I)I

    .line 212
    :goto_ae
    iget-object v0, p0, LDs;->a:LDr;

    const/4 v1, 0x0

    iget-object v2, p0, LDs;->a:LDr;

    invoke-static {v2}, LDr;->a(LDr;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, LDs;->a:Landroid/text/Spannable;

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, LDr;->c(LDr;I)I

    .line 213
    iget-object v0, p0, LDs;->a:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, LDs;->a:Landroid/text/Spannable;

    iget-object v2, p0, LDs;->a:LDr;

    invoke-static {v2}, LDr;->a(LDr;)I

    move-result v2

    iget-object v3, p0, LDs;->a:LDr;

    invoke-static {v3}, LDr;->a(LDr;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1, v2, v3}, LCL;->a(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/CharSequence;II)V

    goto/16 :goto_51

    .line 210
    :cond_e1
    iget-object v0, p0, LDs;->a:LDr;

    invoke-static {v0, v8}, LDr;->b(LDr;I)I

    goto :goto_ae

    :cond_e7
    move-wide v0, v2

    goto :goto_a3
.end method
