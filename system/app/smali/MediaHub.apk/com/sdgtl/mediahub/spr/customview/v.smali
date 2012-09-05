.class final Lcom/sdgtl/mediahub/spr/customview/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# static fields
.field private static synthetic b:[I


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/v;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a()[I
    .registers 3

    sget-object v0, Lcom/sdgtl/mediahub/spr/customview/v;->b:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/sdgtl/mediahub/spr/ar;->values()[Lcom/sdgtl/mediahub/spr/ar;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->M:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_16} :catch_2b9

    :goto_16
    :try_start_16
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->b:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_1f} :catch_2b6

    :goto_1f
    :try_start_1f
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->N:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_29} :catch_2b3

    :goto_29
    :try_start_29
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->o:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_2b0

    :goto_33
    :try_start_33
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->p:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3d} :catch_2ad

    :goto_3d
    :try_start_3d
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->F:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_47} :catch_2aa

    :goto_47
    :try_start_47
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->G:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_51} :catch_2a7

    :goto_51
    :try_start_51
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->a:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_5a} :catch_2a4

    :goto_5a
    :try_start_5a
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->c:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_63} :catch_2a1

    :goto_63
    :try_start_63
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->d:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_6c} :catch_29e

    :goto_6c
    :try_start_6c
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->e:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_75} :catch_29b

    :goto_75
    :try_start_75
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->O:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_7f} :catch_298

    :goto_7f
    :try_start_7f
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->A:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_89} :catch_295

    :goto_89
    :try_start_89
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->Y:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_93} :catch_292

    :goto_93
    :try_start_93
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->r:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_9d} :catch_28f

    :goto_9d
    :try_start_9d
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->V:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a7} :catch_28c

    :goto_a7
    :try_start_a7
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->k:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_b1} :catch_289

    :goto_b1
    :try_start_b1
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->l:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_bb} :catch_286

    :goto_bb
    :try_start_bb
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->m:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bb .. :try_end_c5} :catch_283

    :goto_c5
    :try_start_c5
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->S:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c5 .. :try_end_cf} :catch_280

    :goto_cf
    :try_start_cf
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->n:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cf .. :try_end_d9} :catch_27d

    :goto_d9
    :try_start_d9
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->T:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d9 .. :try_end_e3} :catch_27a

    :goto_e3
    :try_start_e3
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->q:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e3 .. :try_end_ed} :catch_277

    :goto_ed
    :try_start_ed
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->U:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ed .. :try_end_f7} :catch_274

    :goto_f7
    :try_start_f7
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->s:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_101
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f7 .. :try_end_101} :catch_271

    :goto_101
    :try_start_101
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->t:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_10b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_101 .. :try_end_10b} :catch_26e

    :goto_10b
    :try_start_10b
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->u:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_115
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10b .. :try_end_115} :catch_26b

    :goto_115
    :try_start_115
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->v:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_11f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_115 .. :try_end_11f} :catch_268

    :goto_11f
    :try_start_11f
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->w:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_129
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11f .. :try_end_129} :catch_265

    :goto_129
    :try_start_129
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->W:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_133
    .catch Ljava/lang/NoSuchFieldError; {:try_start_129 .. :try_end_133} :catch_262

    :goto_133
    :try_start_133
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->x:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_13d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_133 .. :try_end_13d} :catch_25f

    :goto_13d
    :try_start_13d
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->y:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_147
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13d .. :try_end_147} :catch_25c

    :goto_147
    :try_start_147
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->z:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_151
    .catch Ljava/lang/NoSuchFieldError; {:try_start_147 .. :try_end_151} :catch_259

    :goto_151
    :try_start_151
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->X:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_15b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_151 .. :try_end_15b} :catch_256

    :goto_15b
    :try_start_15b
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->B:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_165
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15b .. :try_end_165} :catch_253

    :goto_165
    :try_start_165
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->Z:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_16f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_165 .. :try_end_16f} :catch_250

    :goto_16f
    :try_start_16f
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->C:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_179
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16f .. :try_end_179} :catch_24d

    :goto_179
    :try_start_179
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->D:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_183
    .catch Ljava/lang/NoSuchFieldError; {:try_start_179 .. :try_end_183} :catch_24a

    :goto_183
    :try_start_183
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->J:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_18d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_183 .. :try_end_18d} :catch_247

    :goto_18d
    :try_start_18d
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->K:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_197
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18d .. :try_end_197} :catch_244

    :goto_197
    :try_start_197
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_1a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_197 .. :try_end_1a1} :catch_241

    :goto_1a1
    :try_start_1a1
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->I:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_1ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a1 .. :try_end_1ab} :catch_23e

    :goto_1ab
    :try_start_1ab
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->E:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ab .. :try_end_1b5} :catch_23b

    :goto_1b5
    :try_start_1b5
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->aa:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_1bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b5 .. :try_end_1bf} :catch_239

    :goto_1bf
    :try_start_1bf
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->L:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_1c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1bf .. :try_end_1c9} :catch_237

    :goto_1c9
    :try_start_1c9
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->ab:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_1d3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c9 .. :try_end_1d3} :catch_235

    :goto_1d3
    :try_start_1d3
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->f:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d3 .. :try_end_1dc} :catch_233

    :goto_1dc
    :try_start_1dc
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->i:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1dc .. :try_end_1e6} :catch_231

    :goto_1e6
    :try_start_1e6
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->j:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_1f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e6 .. :try_end_1f0} :catch_22f

    :goto_1f0
    :try_start_1f0
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->P:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_1fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f0 .. :try_end_1fa} :catch_22d

    :goto_1fa
    :try_start_1fa
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->h:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_204
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1fa .. :try_end_204} :catch_22b

    :goto_204
    :try_start_204
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->R:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_20e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_204 .. :try_end_20e} :catch_229

    :goto_20e
    :try_start_20e
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->g:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_217
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20e .. :try_end_217} :catch_227

    :goto_217
    :try_start_217
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->Q:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_221
    .catch Ljava/lang/NoSuchFieldError; {:try_start_217 .. :try_end_221} :catch_225

    :goto_221
    sput-object v0, Lcom/sdgtl/mediahub/spr/customview/v;->b:[I

    goto/16 :goto_4

    :catch_225
    move-exception v1

    goto :goto_221

    :catch_227
    move-exception v1

    goto :goto_217

    :catch_229
    move-exception v1

    goto :goto_20e

    :catch_22b
    move-exception v1

    goto :goto_204

    :catch_22d
    move-exception v1

    goto :goto_1fa

    :catch_22f
    move-exception v1

    goto :goto_1f0

    :catch_231
    move-exception v1

    goto :goto_1e6

    :catch_233
    move-exception v1

    goto :goto_1dc

    :catch_235
    move-exception v1

    goto :goto_1d3

    :catch_237
    move-exception v1

    goto :goto_1c9

    :catch_239
    move-exception v1

    goto :goto_1bf

    :catch_23b
    move-exception v1

    goto/16 :goto_1b5

    :catch_23e
    move-exception v1

    goto/16 :goto_1ab

    :catch_241
    move-exception v1

    goto/16 :goto_1a1

    :catch_244
    move-exception v1

    goto/16 :goto_197

    :catch_247
    move-exception v1

    goto/16 :goto_18d

    :catch_24a
    move-exception v1

    goto/16 :goto_183

    :catch_24d
    move-exception v1

    goto/16 :goto_179

    :catch_250
    move-exception v1

    goto/16 :goto_16f

    :catch_253
    move-exception v1

    goto/16 :goto_165

    :catch_256
    move-exception v1

    goto/16 :goto_15b

    :catch_259
    move-exception v1

    goto/16 :goto_151

    :catch_25c
    move-exception v1

    goto/16 :goto_147

    :catch_25f
    move-exception v1

    goto/16 :goto_13d

    :catch_262
    move-exception v1

    goto/16 :goto_133

    :catch_265
    move-exception v1

    goto/16 :goto_129

    :catch_268
    move-exception v1

    goto/16 :goto_11f

    :catch_26b
    move-exception v1

    goto/16 :goto_115

    :catch_26e
    move-exception v1

    goto/16 :goto_10b

    :catch_271
    move-exception v1

    goto/16 :goto_101

    :catch_274
    move-exception v1

    goto/16 :goto_f7

    :catch_277
    move-exception v1

    goto/16 :goto_ed

    :catch_27a
    move-exception v1

    goto/16 :goto_e3

    :catch_27d
    move-exception v1

    goto/16 :goto_d9

    :catch_280
    move-exception v1

    goto/16 :goto_cf

    :catch_283
    move-exception v1

    goto/16 :goto_c5

    :catch_286
    move-exception v1

    goto/16 :goto_bb

    :catch_289
    move-exception v1

    goto/16 :goto_b1

    :catch_28c
    move-exception v1

    goto/16 :goto_a7

    :catch_28f
    move-exception v1

    goto/16 :goto_9d

    :catch_292
    move-exception v1

    goto/16 :goto_93

    :catch_295
    move-exception v1

    goto/16 :goto_89

    :catch_298
    move-exception v1

    goto/16 :goto_7f

    :catch_29b
    move-exception v1

    goto/16 :goto_75

    :catch_29e
    move-exception v1

    goto/16 :goto_6c

    :catch_2a1
    move-exception v1

    goto/16 :goto_63

    :catch_2a4
    move-exception v1

    goto/16 :goto_5a

    :catch_2a7
    move-exception v1

    goto/16 :goto_51

    :catch_2aa
    move-exception v1

    goto/16 :goto_47

    :catch_2ad
    move-exception v1

    goto/16 :goto_3d

    :catch_2b0
    move-exception v1

    goto/16 :goto_33

    :catch_2b3
    move-exception v1

    goto/16 :goto_29

    :catch_2b6
    move-exception v1

    goto/16 :goto_1f

    :catch_2b9
    move-exception v1

    goto/16 :goto_16
.end method


# virtual methods
.method public final onQueryTextChange(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/v;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    const-string v1, "key_sort_by"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, "date"

    :cond_d
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v2, "00"

    invoke-static {}, Lcom/sdgtl/mediahub/spr/customview/v;->a()[I

    move-result-object v1

    invoke-static {}, Lcom/sdgtl/mediahub/spr/aq;->a()Lcom/sdgtl/mediahub/spr/ar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v5

    aget v1, v1, v5

    sparse-switch v1, :sswitch_data_92

    :cond_25
    move v1, v3

    :goto_26
    const-string v5, "product_type_code"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sort"

    invoke-virtual {v4, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "keyword"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "search_type"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/v;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchtype:Ljava/lang/String;
    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->access$6(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "parent_view"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "search_by"

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/v;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchBy:I
    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->access$7(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/v;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->E:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v0, v1, v4}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    return v3

    :sswitch_58
    const-string v2, "01"

    const/4 v1, 0x1

    goto :goto_26

    :sswitch_5c
    const-string v2, "02"

    const/4 v1, 0x3

    goto :goto_26

    :sswitch_60
    const-string v2, "02"

    const/4 v1, 0x4

    goto :goto_26

    :sswitch_64
    const-string v2, "02"

    const/4 v1, 0x5

    goto :goto_26

    :sswitch_68
    invoke-static {}, Lcom/sdgtl/mediahub/spr/aq;->a()Lcom/sdgtl/mediahub/spr/ar;

    move-result-object v1

    sget-object v5, Lcom/sdgtl/mediahub/spr/ar;->E:Lcom/sdgtl/mediahub/spr/ar;

    if-ne v1, v5, :cond_25

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/v;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_25

    const-string v1, "product_type_code"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8f

    :goto_80
    const-string v2, "parent_view"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/customview/v;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->finish()V

    move v6, v2

    move-object v2, v1

    move v1, v6

    goto :goto_26

    :cond_8f
    move-object v1, v2

    goto :goto_80

    nop

    :sswitch_data_92
    .sparse-switch
        0x3 -> :sswitch_58
        0x6 -> :sswitch_5c
        0x7 -> :sswitch_60
        0x8 -> :sswitch_64
        0x1f -> :sswitch_68
    .end sparse-switch
.end method
